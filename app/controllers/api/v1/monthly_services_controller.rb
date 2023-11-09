class Api::V1::MonthlyServicesController < ApplicationController
  before_action :set_monthly_service, only: %i[show update destroy]

  # GET /monthly_services
  def index
    @monthly_services = MonthlyService.all

    render json: @monthly_services
  end

  # GET /monthly_services/1
  def show
    render json: @monthly_service
  end

  # POST /monthly_services
  def create
    @monthly_service = MonthlyService.new(monthly_service_params)

    if @monthly_service.save
      render json: @monthly_service, status: :created, location: @monthly_service
    else
      render json: @monthly_service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /monthly_services/1
  def update
    if @monthly_service.update(monthly_service_params)
      render json: @monthly_service
    else
      render json: @monthly_service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /monthly_services/1
  def destroy
    @monthly_service.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_monthly_service
    @monthly_service = MonthlyService.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def monthly_service_params
    params.require(:monthly_service).permit(:name, :month, :annual_total, :user_id)
  end
end
