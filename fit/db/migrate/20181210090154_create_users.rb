class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name,  null: false
      t.string :email, null: false, unique: true
      t.string :password, null: false
      t.string :phone, null: false, unique: true
      t.string :type, null: false
      t.index :email
      t.timestamps
    end
  end
end
