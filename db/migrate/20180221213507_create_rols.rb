class CreateRols < ActiveRecord::Migration[5.1]
  def change
    create_table :rols do |t|
      t.string :name
      t.boolean :admin_page
      t.boolean :admin_doc
      t.text :descripcion

      t.timestamps
    end
  end
end
