class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.date :end_date
      t.integer :customer_id
      t.integer :user_id
      t.string :place
      t.integer :service_id
      t.text :description
      t.string :name
      t.integer :value
      t.boolean :state

      t.timestamps
    end
  end
end
