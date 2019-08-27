class CreateSocials < ActiveRecord::Migration[5.2]
  def change
    create_table :socials do |t|
      t.string :type
      t.string :url
      t.integer :profile_type

      t.timestamps
    end
  end
end
