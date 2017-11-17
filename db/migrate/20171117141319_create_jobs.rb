class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :level
      t.string :file
      t.text :description

      t.timestamps
    end
  end
end
