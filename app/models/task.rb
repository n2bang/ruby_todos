class Task < ApplicationRecord
  belongs_to :project, class_name: 'Project', foreign_key: 'project_id'
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  belongs_to :assignee, class_name: 'User', foreign_key: 'assignee_id'
end
