class Resume < ApplicationRecord
	mount_uploader :attachment, AttachmentUploader
	belongs_to :job_application
end
