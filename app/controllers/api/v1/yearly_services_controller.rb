class Api::V1::YearlyServicesController < ApplicationController
  before_action :set_yearly_service, only: %i[show update destroy]

  # GET /yearly_services
  def index
    @yearly_services = YearlyService.all

    render json: @yearly_services
  end

  # GET /yearly_services/1
  def show
    render json: @yearly_service
  end

  # POST /yearly_services
  def create
    @yearly_service = YearlyService.new(yearly_service_params)

    if @yearly_service.save
      render json: @yearly_service, status: :created, location: @yearly_service
    else
      render json: @yearly_service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /yearly_services/1
  def update
    if @yearly_service.update(yearly_service_params)
      render json: @yearly_service
    else
      render json: @yearly_service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /yearly_services/1
  def destroy
    @yearly_service.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_yearly_service
    @yearly_service = YearlyService.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def yearly_service_params
    params.require(:yearly_service).permit(:name, :year, :annual_total, :user_id)
  end
end
