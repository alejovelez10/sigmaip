# == Schema Information
#
# Table name: new_categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class NewCategory < ApplicationRecord
	has_many :notices
end
