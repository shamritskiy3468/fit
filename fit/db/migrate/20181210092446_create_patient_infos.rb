class CreatePatientInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_infos do |t|
      t.string :symptoms
      t.integer :patient_id
      t.timestamps
    end
  end
end
