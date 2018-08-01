class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :firstname
      t.string :lastname
      t.integer :gender
      t.date :birthday
      t.string :phone
      t.string :address
      t.integer :deleted
      t.timestamp :created_at

      t.timestamps
    end
  end
end
