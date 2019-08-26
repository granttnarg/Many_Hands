class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.string :role
      t.text :description
      t.integer :category
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
