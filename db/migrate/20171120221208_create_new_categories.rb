class CreateNewCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :new_categories do |t|
      t.string :name
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
