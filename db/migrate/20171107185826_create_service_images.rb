class CreateServiceImages < ActiveRecord::Migration[5.1]
  def change
    create_table :service_images do |t|
      t.string :name
      t.string :imagen
      t.string :user_id
      t.integer :service_id

      t.timestamps
    end
  end
end
