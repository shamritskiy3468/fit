class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patient= Patient.all
  end

  def show
  end

  def edit
    @patient.build_patient_info
  end

  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to pages_home_path, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_patient
      @patient = Patient.find(params[:id])
    end

    def patient_params
      params.permit(:first_name, :last_name, :phone, patient_info_attributes: [:height, :weight, :aim_wight, :age])
    end
end