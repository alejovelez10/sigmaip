# == Schema Information
#
# Table name: service_images
#
#  id         :integer          not null, primary key
#  name       :string
#  imagen     :string
#  user_id    :string
#  service_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  first      :boolean
#  order      :integer
#

class ServiceImage < ApplicationRecord
	belongs_to :service, inverse_of: :service_images
    mount_uploader :imagen , ServiceImageUploader  
end
