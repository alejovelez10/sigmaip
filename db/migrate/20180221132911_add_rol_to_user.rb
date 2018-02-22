class AddRolToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :rol_id, :integer
    add_column :users, :document, :string
  end
end
