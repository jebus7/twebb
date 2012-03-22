class CreatePatientData < ActiveRecord::Migration
  def change
    create_table :patient_data do |t|
      t.integer :patient_id
      t.decimal :decimal

      t.timestamps
    end
  end
end
