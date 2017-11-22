class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :sector
      t.string :description
      t.integer :user_id
      t.string :logo
      t.boolean :state

      t.timestamps
    end
  end
end
