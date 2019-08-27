class ChangeRequestsSpotsId < ActiveRecord::Migration[5.2]
  def change
    rename_column :requests, :spots_id, :spot_id
  end
end
