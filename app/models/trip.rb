class Trip < ActiveRecord::Base
  validates :location, :outgoing_airport, :incoming_airport, :outgoing_departure, :outgoing_arrival, :incoming_departure, :incoming_arrival, presence: true

  belongs_to :user
end
