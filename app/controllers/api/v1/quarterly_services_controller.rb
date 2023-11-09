class Api::V1::QuarterlyServicesController < ApplicationController
  before_action :set_quarterly_service, only: %i[show update destroy]

  # GET /quarterly_services
  def index
    @quarterly_services = QuarterlyService.all

    render json: @quarterly_services
  end

  # GET /quarterly_services/1
  def show
    render json: @quarterly_service
  end

  # POST /quarterly_services
  def create
    @quarterly_service = QuarterlyService.new(quarterly_service_params)

    if @quarterly_service.save
      render json: @quarterly_service, status: :created, location: @quarterly_service
    else
      render json: @quarterly_service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quarterly_services/1
  def update
    if @quarterly_service.update(quarterly_service_params)
      render json: @quarterly_service
    else
      render json: @quarterly_service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quarterly_services/1
  def destroy
    @quarterly_service.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_quarterly_service
    @quarterly_service = QuarterlyService.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def quarterly_service_params
    params.require(:quarterly_service).permit(:name, :quarterly, :annual_total, :user_id)
  end
end
