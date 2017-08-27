# frozen_string_literal: true

class AppoitmentsController < ApplicationController
  before_action :set_appoitment, only: %i[show update destroy]

  # GET /appoitments
  def index
    @appoitments = Appoitment.all

    render json: @appoitments
  end

  # GET /appoitments/1
  def show
    render json: @appoitment
  end

  # POST /appoitments
  def create
    binding.pry
    Appoitment.create(appoitment_params)
    @appoitment = Appoitment.new(appoitment_params)

    if @appoitment.save
      render json: @appoitment, status: :created, location: @appoitment
    else
      render json: @appoitment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appoitments/1
  def update
    Appoitment.update(appoitment_params)
    if @appoitment.update(appoitment_params)
      render json: @appoitment
    else
      render json: @appoitment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appoitments/1
  def destroy
    @appoitment.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_appoitment
    @appoitment = Appoitment.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def appoitment_params
    params.require(:appoitment).permit(:id, :date, :user_id)
  end
end
