class PatientsController < ApplicationController
    before_action :set_patient, only: [:show, :edit, :update, :destroy]

    def show
        render json: @patient
    end

    def index
        @patients = Patient.all
        render json: @patients
    end

    def new
        @patient = Patient.new
    end

    def create
        @patient = Patient.create(patient_params(:name, :age))            
    end

    def edit
    end

    def update
        @patient.update(patient_params(:name, :age))
    end

    def destroy
        @patient.destroy
    end

    private

    def set_patient
        @patient = Patient.find(params[:id])
    end

    def patient_params(*args)
        params.require(:patient).permit(*args)
    end

end
