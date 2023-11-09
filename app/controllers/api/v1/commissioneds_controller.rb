class Api::V1::CommissionedsController < ApplicationController
  before_action :set_commissioned, only: %i[show update destroy]

  # GET /commissioneds
  def index
    @commissioneds = Commissioned.all

    render json: @commissioneds
  end

  # GET /commissioneds/1
  def show
    render json: @commissioned
  end

  # POST /commissioneds
  def create
    @commissioned = Commissioned.new(commissioned_params)

    if @commissioned.save
      render json: @commissioned, status: :created, location: @commissioned
    else
      render json: @commissioned.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /commissioneds/1
  def update
    if @commissioned.update(commissioned_params)
      render json: @commissioned
    else
      render json: @commissioned.errors, status: :unprocessable_entity
    end
  end

  # DELETE /commissioneds/1
  def destroy
    @commissioned.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_commissioned
    @commissioned = Commissioned.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def commissioned_params
    params.require(:commissioned).permit(:user_id, :name)
  end
end
