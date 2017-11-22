class AddCategoryToNotice < ActiveRecord::Migration[5.1]
  def change
    add_column :notices, :new_category_id, :integer
    add_column :notices, :state_notice, :boolean
  end
end
