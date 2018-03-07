json.extract! job_application_form, :id, :title, :description, :created_at, :updated_at
json.url job_application_form_url(job_application_form, format: :json)
