class CreateBusBoardings < ActiveRecord::Migration
  def change
    create_table :bus_boardings do |t|
      t.string :stop_id
      t.string :on_street
      t.string :cross_street
      t.string :routes
      t.float :boardings
      t.float :alightings
      t.datetime :month_beginning
      t.string :daytype
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
