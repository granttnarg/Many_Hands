class AddEmbedToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :embed, :text
  end
end
