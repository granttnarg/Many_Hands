class ChangeIsCreativeOnUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :is_creative?, :is_creative
  end
end
