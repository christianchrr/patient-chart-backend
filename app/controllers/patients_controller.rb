class PatientsController < ApplicationController
    before_action :set_patient, only: [:show, :edit, :update, :destroy]

    def show
    end

    def index
        patients = Patient.all
        render json: patients
    end

    def new
        patient = Patient.new
    end

    def create
        patient = Patient.new(patient_params(:name, :age))
        if patient.save
            
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def set_patient
        patient = Patient.find(params[:id])
    end

end
