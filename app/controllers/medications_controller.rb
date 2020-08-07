class MedicationsController < ApplicationController
    before_action :set_medication, only: [:show, :edit, :update, :destroy]

    def show
    end

    def index
        medications = Medication.all
        render json: medications
    end

    def new
        medication = Medication.new
    end

    def create
        medication = Medication.new(medication_params(:name, :form, :strength))
    end

    def edit
    end

    def update
        medication.update(medication_params(:name, :form, :strength))
    end

    def destroy
        patient.destroy
    end

    private

    def set_medication
        medication = Medication.find(params[:id])
    end

    def medication_params(*args)
        params.require(:medication).permit(*args)
    end

end
