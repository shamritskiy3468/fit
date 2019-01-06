class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]

  def index
    @doctor= Doctor.all
  end

  def show
  end

  def edit
    @doctor.build_doctor_info
  end

  def update
    respond_to do |format|
      if @doctor.update(doctor_params)
        format.html { redirect_to @doctor, notice: 'Doctor was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor }
      else
        format.html { render :edit }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @doctor.destroy
    respond_to do |format|
      format.html { redirect_to pages_home_path, notice: 'Doctor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.permit(:first_name, :last_name, :phone, doctor_info_attributes: [:speciality, :success_price, :failure_price])
    end
end