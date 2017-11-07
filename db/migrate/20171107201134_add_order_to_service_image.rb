class AddOrderToServiceImage < ActiveRecord::Migration[5.1]
  def change
    add_column :service_images, :order, :integer
  end
end
