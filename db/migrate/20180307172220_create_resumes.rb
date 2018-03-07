class CreateResumes < ActiveRecord::Migration[5.1]
  def change
    create_table :resumes do |t|
      t.string :attachment
      t.integer :job_application_id
      t.timestamps
    end
  end
end
