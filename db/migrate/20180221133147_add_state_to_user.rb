class AddStateToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :state, :boolean
    add_column :users, :avatar, :string
  end
end
