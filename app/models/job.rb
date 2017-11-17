class Job < ApplicationRecord
	 mount_uploader :file , FileJobUploader  
end
