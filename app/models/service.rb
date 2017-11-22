# == Schema Information
#
# Table name: services
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :text
#  sub_services :text
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Service < ApplicationRecord
	has_many :experiences
    has_many :service_images , inverse_of: :service, dependent: :destroy
	accepts_nested_attributes_for :service_images, :allow_destroy => true
end
