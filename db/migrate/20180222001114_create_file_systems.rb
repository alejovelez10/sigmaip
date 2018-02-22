class CreateFileSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :file_systems do |t|
      t.string :name
      t.boolean :type_file
      t.string :file
      t.integer :level
      t.string :folder_id
      t.integer :user_id
      t.string :code

      t.timestamps
    end
  end
end
