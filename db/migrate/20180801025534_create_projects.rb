class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.integer :status
      t.integer :deleted
      t.timestamp :created_at

      t.timestamps
    end
  end
end