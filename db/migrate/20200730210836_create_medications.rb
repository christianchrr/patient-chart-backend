class CreateMedications < ActiveRecord::Migration[6.0]
  def change
    create_table :medications do |t|
      t.string :name
      t.string :form
      t.string :strength
      t.belongs_to :patient

      t.timestamps
    end
  end
end
