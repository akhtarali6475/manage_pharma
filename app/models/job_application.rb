class JobApplication < ApplicationRecord
	belongs_to :job_application_form
	has_one :resume

	validates :phone_number, :first_name, presence: true

	accepts_nested_attributes_for :resume
end
