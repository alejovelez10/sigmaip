class CreateClaims < ActiveRecord::Migration[5.1]
  def change
    create_table :claims do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :typep
      t.text :message

      t.timestamps
    end
  end
end
