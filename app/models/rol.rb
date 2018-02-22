class Rol < ApplicationRecord
    has_and_belongs_to_many :file_systems   
	has_many :users
end
