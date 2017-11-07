class Service < ApplicationRecord
    has_many :service_images , inverse_of: :service, dependent: :destroy
	accepts_nested_attributes_for :service_images, :allow_destroy => true
end
