# == Schema Information
#
# Table name: teams
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  experience  :text
#  image       :string
#  user_id     :integer
#  linkedin    :string
#  twitter     :string
#  position    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  order       :integer
#

class Team < ApplicationRecord
	mount_uploader :image, ImageTeamUploader
end
