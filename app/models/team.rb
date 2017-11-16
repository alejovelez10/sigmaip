class Team < ApplicationRecord
	mount_uploader :image, ImageTeamUploader
end
