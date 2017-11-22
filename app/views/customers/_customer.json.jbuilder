json.extract! customer, :id, :name, :sector, :description, :user_id, :logo, :state, :created_at, :updated_at
json.url customer_url(customer, format: :json)
