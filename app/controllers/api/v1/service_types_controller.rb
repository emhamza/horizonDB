class Api::V1::ServiceTypesController < ApplicationController
  before_action :set_service_type, only: %i[show update destroy]

  # GET /api/v1/service_types
  def index
    @service_types = ServiceType.all
    render json: @service_types
  end

  # GET /api/v1/service_types/:id
  def show
    render json: @service_types
  end

  # POST /api/v1/service_types
  def create
    @service_types = ServiceType.new(service_type_params)

    if @service_type.save
      render json: @service_type, status: :created
    else
      render json: @service_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/service_types
  def destroy
    @service_type = ServiceType.find(params[:id])
  end

  private

  def service_type_params
    params.require(:service_type).permit(:name, :category, :default_rate, :frequency, :target, :commissioned_by)
  end
end
