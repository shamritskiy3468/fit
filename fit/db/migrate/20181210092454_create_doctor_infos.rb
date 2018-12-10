class CreateDoctorInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_infos do |t|
      t.string :speciality
      t.integer :doctor_id
      t.timestamps
    end
  end
end
