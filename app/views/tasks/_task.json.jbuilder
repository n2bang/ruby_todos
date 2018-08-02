json.extract! task, :id, :owner_id, :assignee_id, :project_id, :title, :description, :prioritise, :status, :deleted, :created_at, :updated_at
json.url task_url(task, format: :json)
