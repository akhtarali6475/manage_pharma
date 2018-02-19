class Scheme < ApplicationRecord
	mount_uploaders :avatars, AvatarUploader
end
