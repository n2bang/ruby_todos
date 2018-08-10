json.extract! user, :id, :email, :username, :password, :firstname, :lastname, :gender, :birthday, :phone, :address, :deleted, :created_at, :updated_at
json.url user_url(user, format: :json)
