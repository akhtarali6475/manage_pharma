json.extract! job_application, :id, :phone_number, :email, :first_name, :last_name, :job_application_form_id, :created_at, :updated_at
json.url job_application_url(job_application, format: :json)
