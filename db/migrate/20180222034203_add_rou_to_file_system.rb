class AddRouToFileSystem < ActiveRecord::Migration[5.1]
  def change
    add_column :file_systems, :route, :string
  end
end
