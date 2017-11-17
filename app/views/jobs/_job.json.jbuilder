json.extract! job, :id, :name, :phone, :email, :level, :file, :description, :created_at, :updated_at
json.url job_url(job, format: :json)
