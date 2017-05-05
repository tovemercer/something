class CreateTrips < ActiveRecord::Migration
  def change
      create_table :trips do |t|
        t.integer :user_id, null: false
        t.string :location, null: false
        t.string :outgoing_airport, null: false
        t.string :incoming_airport, null: false
        t.datetime :outgoing_departure, null: false
        t.datetime :outgoing_arrival, null: false
        t.datetime :incoming_departure, null: false
        t.datetime :incoming_arrival, null: false

        t.timestamps(null: false)
      end
  end
end
