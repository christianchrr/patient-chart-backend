class Medication < ApplicationRecord
    belongs_to :patient

    validates_presence_of :name, :form, :strength
end
