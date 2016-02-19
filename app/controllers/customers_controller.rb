class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
    @customers = Customer.paginate(:page => params[:page], :per_page => 5) 
  end

  
  def customer_show
    @customer = Customer.find_by_email(params[:email])
    #@address_details = AddressDetail.all
    respond_to do |format|
      format.html  #index.html.erb
      format.json { render :json => @customer } #.to_json(:include => [:address_details])}
    end
    #respond_to do |format|
      #format.html  #index.html.erb
      #format.json { render json: @customer }
    #end

     def address_show
      @customer = Customer.find_by_email(params[:email])
      @address = @customer.address_details

       respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @address }
    end  
     end
   end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @customer = Customer.find_by_permalink(params[:id])
    @customers = Customer.all
   # @address_details = Address_detail.where(customer_id: @customer.id)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer }
    end  
  end

  # GET /customers/new
  def new
    @customer = Customer.new
    
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find_by_permalink(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:bdate,:name,:lname, :addr1, :addr2, :addr3, :addr4, :city, :state, :country, :postcode, :contactno, :email, address_details_attributes: [:id,:line1,:line2,:city,:postcode,:state,:country])
    end
end
