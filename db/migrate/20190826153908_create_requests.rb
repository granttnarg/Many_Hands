class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :status
      t.text :note
      t.references :user
      t.references :spots

      t.timestamps
    end
  end
end
