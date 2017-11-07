class AddFirstImageToServiceImage < ActiveRecord::Migration[5.1]
  def change
    add_column :service_images, :first, :boolean
  end
end
