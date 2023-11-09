class Api::V1::BiannualServicesController < ApplicationController
  before_action :set_biannual_service, only: %i[show update destroy]

  # GET /biannual_services
  def index
    @biannual_services = BiannualService.all

    render json: @biannual_services
  end

  # GET /biannual_services/1
  def show
    render json: @biannual_service
  end

  # POST /biannual_services
  def create
    @biannual_service = BiannualService.new(biannual_service_params)

    if @biannual_service.save
      render json: @biannual_service, status: :created, location: @biannual_service
    else
      render json: @biannual_service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /biannual_services/1
  def update
    if @biannual_service.update(biannual_service_params)
      render json: @biannual_service
    else
      render json: @biannual_service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /biannual_services/1
  def destroy
    @biannual_service.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_biannual_service
    @biannual_service = BiannualService.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def biannual_service_params
    params.require(:biannual_service).permit(:name, :biannual_span, :annual_total, :user_id)
  end
end
