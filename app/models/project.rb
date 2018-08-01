class Project < ApplicationRecord
  has_many :tasks, class_name: "Task", foreign_key: "project_id"
  has_many :users
end
