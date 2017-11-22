class CreateExperienceImages < ActiveRecord::Migration[5.1]
  def change
    create_table :experience_images do |t|
      t.string :name
      t.string :image
      t.integer :user_id
      t.integer :order
      t.integer :experience_id
      t.boolean :state

      t.timestamps
    end
  end
end
