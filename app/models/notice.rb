# == Schema Information
#
# Table name: notices
#
#  id              :integer          not null, primary key
#  name            :string
#  category        :string
#  description     :string
#  image           :string
#  state           :string
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  new_category_id :integer
#  state_notice    :boolean
#

class Notice < ApplicationRecord
	belongs_to :new_category
	belongs_to :user
	has_many :comments
	mount_uploader :image, NoticeImageUploader
end
