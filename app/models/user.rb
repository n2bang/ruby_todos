class User < ApplicationRecord
  has_many :owned_tasks, class_name: "Task", foreign_key: "owner_id"
  has_many :assigned_tasks, class_name: "Task", foreign_key: "assignee_id"
  has_many :projects
end
