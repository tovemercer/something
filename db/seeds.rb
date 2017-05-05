User.create(
  first_name: "Tove",
  last_name: "Mercer",
  email: "tove@tove.com",
  password: "tove")

Trip.create(
  user_id: 1,
  location: "Hawaii",
  outgoing_airport: "ORD",
  incoming_airport: "HNL",
  outgoing_departure: "2017-06-01 12:00:00",
  outgoing_arrival: "2017-06-01 20:30:00",
  incoming_departure: "2017-06-01 07:30:00",
  incoming_arrival: "2017-06-01 14:00:00")
