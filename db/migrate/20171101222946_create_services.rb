class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.text :sub_services
      t.integer :user_id

      t.timestamps
    end
  end
end
