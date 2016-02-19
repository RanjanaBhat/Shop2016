class OrderdetailsController < ApplicationController
  before_action :set_orderdetail, only: [:show, :edit, :update, :destroy]
  
  # GET /orderdetails
  # GET /orderdetails.json
  def index
    @orderdetails = Orderdetail.order(:id)
    @products = Product.order(:id)
    @orderdetails = Orderdetail.paginate(:page => params[:page], :per_page => 10) 
  end

  # GET /orderdetails/1
  # GET /orderdetails/1.json
  def show
     @products = Product.all   
  end

  # GET /orderdetails/new
  def new
    @orderdetail = Orderdetail.new
    @products = Product.all
    @customers = Customer.all
    @orderdetail.build_address_detail
    @orderdetail.build_customer
    #@orderdetail.line_items.build
  end

  # GET /orderdetails/1/edit
  def edit
    @products = Product.all
  end

  # POST /orderdetails
  # POST /orderdetails.json
  def create
    @orderdetail = Orderdetail.new(orderdetail_params)
    @products = Product.order(:id)
    @customers = Customer.order(:id)

    respond_to do |format|
      if @orderdetail.save
        @orderdetail.address_detail.update_attributes(:customer_id => @orderdetail.customer_id)
        format.html { redirect_to @orderdetail, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @orderdetail }
      else
        format.html { render :new }
        format.json { render json: @orderdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orderdetails/1
  # PATCH/PUT /orderdetails/1.json
  def update
    @products = Product.all
    respond_to do |format|
      if @orderdetail.update(orderdetail_params)
        format.html { redirect_to @orderdetail, notice: 'Orderdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @orderdetail }
      else
        format.html { render :edit }
        format.json { render json: @orderdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderdetails/1
  # DELETE /orderdetails/1.json
  def destroy
    @orderdetail.destroy
    respond_to do |format|
      format.html { redirect_to orderdetails_url, notice: 'Orderdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orderdetail
      @orderdetail = Orderdetail.where(:permalink =>params[:id]).first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orderdetail_params
      params.require(:orderdetail).permit(:pname,:SKU,:invoice, :order_no, 
      :is_express_delivery, :is_customer_pickup, :delivery_date, :delivery_slot, 
      :carrier, :order_currency, :order_value, :payment_collection, 
      :special_instruction,:name,

      line_items_attributes: [:name,:id,:product_id,:SKU,:description,:price,:quantity],
      address_detail_attributes: [:id,:line1,:line2,:city,:postcode,:state,:country],
      customer_attributes: [:id,:name,:bdate,:contactno,:email])
    end
end
