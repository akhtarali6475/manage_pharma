class CreateJobApplicationForms < ActiveRecord::Migration[5.1]
  def change
    create_table :job_application_forms do |t|
      t.string :title
      t.text :description
      t.boolean  :open, default: false

      t.timestamps
    end
  end
end
