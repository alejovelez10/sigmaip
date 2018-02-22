class CreateFileSystemsAndRolsAssociations < ActiveRecord::Migration[5.1]
  def change
    create_table :file_systems_rols, id: false do |t|
    	t.belongs_to :file_system, index: true
      t.belongs_to :rol, index: true
    end
  end
end


