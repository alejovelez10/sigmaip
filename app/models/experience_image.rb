# == Schema Information
#
# Table name: experience_images
#
#  id            :integer          not null, primary key
#  name          :string
#  image         :string
#  user_id       :integer
#  order         :integer
#  experience_id :integer
#  state         :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class ExperienceImage < ApplicationRecord
	belongs_to :experience, inverse_of: :experience_images
    mount_uploader :image , ExperienceImageUploader  
end
