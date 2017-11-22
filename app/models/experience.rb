# == Schema Information
#
# Table name: experiences
#
#  id          :integer          not null, primary key
#  end_date    :date
#  customer_id :integer
#  user_id     :integer
#  place       :string
#  service_id  :integer
#  description :text
#  name        :string
#  value       :integer
#  state       :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Experience < ApplicationRecord
	belongs_to :service
	belongs_to :customer
	has_many :experience_images , inverse_of: :experience, dependent: :destroy
	accepts_nested_attributes_for :experience_images, :allow_destroy => true
end
