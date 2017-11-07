class ServiceImage < ApplicationRecord
	belongs_to :service, inverse_of: :service_images
    mount_uploader :imagen , ServiceImageUploader  
end
