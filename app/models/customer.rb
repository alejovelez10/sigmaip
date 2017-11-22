# == Schema Information
#
# Table name: customers
#
#  id          :integer          not null, primary key
#  name        :string
#  sector      :string
#  description :string
#  user_id     :integer
#  logo        :string
#  state       :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Customer < ApplicationRecord
	has_many :experiences
	mount_uploader :logo, CustomerLogoUploader
end
