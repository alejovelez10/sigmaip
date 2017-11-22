class CreateNotices < ActiveRecord::Migration[5.1]
  def change
    create_table :notices do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :image
      t.string :state
      t.integer :user_id

      t.timestamps
    end
  end
end
