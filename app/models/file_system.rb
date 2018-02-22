class FileSystem < ApplicationRecord
	has_and_belongs_to_many :rols, dependent: :destroy
	mount_uploader :file, FileSystemUploader


	  def self.search(search)
    where("name like '%#{search}%'")
  end

end
