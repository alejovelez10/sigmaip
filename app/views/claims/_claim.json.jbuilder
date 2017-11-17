json.extract! claim, :id, :name, :email, :company, :type, :message, :created_at, :updated_at
json.url claim_url(claim, format: :json)
