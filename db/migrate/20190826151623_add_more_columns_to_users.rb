class AddMoreColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
     add_column :users, :first_name, :string
     add_column :users, :last_name, :string
     add_column :users, :username, :string
     add_column :users, :bio, :text
     add_column :users, :location, :string
     add_column :users, :looking_for, :string
     add_column :users, :profile_photo, :string
     add_column :users, :coverphoto, :string
     add_column :users, :skill, :string
     add_column :users, :is_creative?, :boolean
     add_column :users, :category, :integer
     add_column :users, :style, :string
  end
end
