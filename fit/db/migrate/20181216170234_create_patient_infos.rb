class CreatePatientInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_infos do |t|
      t.string 
      t.integer :age
      t.float :weight
      t.float :height
      t.float :aim_weight

      t.integer :patient_id
      t.timestamps
    end
  end
end
