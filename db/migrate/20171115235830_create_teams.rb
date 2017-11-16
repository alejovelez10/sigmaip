class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :description
      t.text :experience
      t.string :image
      t.integer :user_id
      t.string :linkedin
      t.string :twitter
      t.string :position

      t.timestamps
    end
  end
end
