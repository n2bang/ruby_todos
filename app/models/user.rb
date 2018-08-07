class User < ApplicationRecord
  has_and_belongs_to_many :projects
  has_many :owner_tasks, class_name: 'Tasks', foreign_key: 'owner_id'
  has_many :assigned_tasks, class_name: 'Tasks', foreign_key: 'assignee_id'
end
