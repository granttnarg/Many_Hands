class AddMoreColumnsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :address, :string
    add_column :events, :venue_name, :string
    add_column :events, :start_date, :date
    add_column :events, :end_date, :date
    add_column :events, :start_time, :time
    add_column :events, :end_time, :time
    add_column :events, :about, :text
    add_column :events, :latititude, :float
    add_column :events, :longitude, :float

  end
end
