# frozen_string_literal: true

class ResidentsController < ApplicationController
  before_action :set_resident, only: %i[show update destroy]

  # GET /residents
  def index
    @residents = Resident.all

    render json: @residents
  end

  # GET /residents/1
  def show
    render json: @resident
  end

  # POST /residents
  def create
    @resident = Resident.new(resident_params)

    if @resident.save
      render json: @resident, status: :created
    else
      render json: @resident.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /residents/1
  def update
    if @resident.update(resident_params)
      render json: @resident
    else
      render json: @resident.errors, status: :unprocessable_entity
    end
  end

  # DELETE /residents/1
  def destroy
    @resident.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_resident
    @resident = Resident.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def resident_params
    params.require(:resident).permit(:first_name, :last_name, :gender)
  end
end
