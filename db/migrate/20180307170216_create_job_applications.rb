class CreateJobApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :job_applications do |t|
      t.string :phone_number
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :job_application_form_id

      t.timestamps
    end
  end
end
