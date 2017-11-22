# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  name        :string
#  phone       :string
#  email       :string
#  level       :string
#  file        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Job < ApplicationRecord
	 mount_uploader :file , FileJobUploader  
end
