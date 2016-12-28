class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :starton
      t.datetime :endon
      t.integer :bike_id

      t.timestamps null: false
    end
  end
end
