# frozen_string_literal: true

class DoctorsController < ProtectedController
  before_action :set_doctor, only: %i[show update destroy]

  # GET /doctors
  def index
    @doctors = current_user.doctors

    render json: @doctors
  end

  # GET /doctors/1
  def show
    render json: @doctor
  end

  # POST /doctors
  def create
    @doctor = current_user.doctors.build(doctor_params)

    if @doctor.save
      render json: @doctor, status: :created
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doctors/1
  def update
    if @doctor.update(doctor_params)
      render json: @doctor
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doctors/1
  def destroy
    @doctor.destroy

    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_doctor
    @doctor = current_user.doctors.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def doctor_params
    params.require(:doctor).permit(
      :user_id, :first_name, :last_name, :specialization
    )
  end
end
