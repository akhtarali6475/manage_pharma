class JobApplicationForm < ApplicationRecord
	has_many :job_applications, dependent: :destroy
	validates :title, :description, presence: true
end
