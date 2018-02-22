class FileSystem < ApplicationRecord
	has_and_belongs_to_many :rols, dependent: :destroy
	mount_uploader :file, FileSystemUploader

end
