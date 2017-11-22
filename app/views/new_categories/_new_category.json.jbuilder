json.extract! new_category, :id, :name, :description, :user_id, :created_at, :updated_at
json.url new_category_url(new_category, format: :json)
