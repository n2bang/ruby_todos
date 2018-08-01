class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :owner_id
      t.integer :assignee_id
      t.integer :project_id
      t.string :title
      t.text :description
      t.integer :prioritise
      t.integer :status
      t.integer :deleted
      t.timestamp :created_at

      t.timestamps
    end
  end
end
