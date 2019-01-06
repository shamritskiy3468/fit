class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :status
      
      t.integer :doctor_id
      t.integer :patient_id
      t.timestamps
    end
  end
end
