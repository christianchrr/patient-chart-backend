class Patient < ApplicationRecord
    has_many :medications

    validates_presence_of :name, :age
end
