class AddressDetailsController < ApplicationController
  before_action :set_address_detail, only: [:show, :edit, :update, :destroy]

  # GET /address_details
  # GET /address_details.json
  def index
    @address_details = AddressDetail.all
  end

  # GET /address_details/1
  # GET /address_details/1.json
  def show
  end

  # GET /address_details/new
  def new
    @address_detail = AddressDetail.new
  end

  # GET /address_details/1/edit
  def edit
  end

  # POST /address_details
  # POST /address_details.json
  def create
    @address_detail = AddressDetail.new(address_detail_params)

    respond_to do |format|
      if @address_detail.save
        format.html { redirect_to @address_detail, notice: 'Address detail was successfully created.' }
        format.json { render :show, status: :created, location: @address_detail }
      else
        format.html { render :new }
        format.json { render json: @address_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /address_details/1
  # PATCH/PUT /address_details/1.json
  def update
    respond_to do |format|
      if @address_detail.update(address_detail_params)
        format.html { redirect_to @address_detail, notice: 'Address detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @address_detail }
      else
        format.html { render :edit }
        format.json { render json: @address_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_details/1
  # DELETE /address_details/1.json
  def destroy
    @address_detail.destroy
    respond_to do |format|
      format.html { redirect_to address_details_url, notice: 'Address detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address_detail
      @address_detail = AddressDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_detail_params
      params.require(:address_detail).permit(:line1, :line2, :city, :state, :postcode, :country)
    end
end
