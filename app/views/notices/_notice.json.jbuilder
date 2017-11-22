json.extract! notice, :id, :name, :category, :description, :image, :state, :user_id, :created_at, :updated_at
json.url notice_url(notice, format: :json)
