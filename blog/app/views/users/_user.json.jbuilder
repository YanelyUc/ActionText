json.extract! user, :id, :email, :name, :last_name, :mobile_phone, :created_at, :updated_at, :is_active
json.url user_url(user, format: :json)
