class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message
      t.integer :notice_id

      t.timestamps
    end
  end
end
