class AddCompanyToContact < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :company, :string
  end
end
