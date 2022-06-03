# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Callum n Callum"
callum = User.create(
  email: 'Callum@email.org',
  password: 'password',
  password_confirmation: 'password'
)
# puts "Created user: #{Callum.first_name} #{Callum.last_name}"

callum = User.create(
  email: 'Callum@email.org',
  password: 'password',
  password_confirmation: 'password'
)
# puts "Created user: #{Callum.first_name} #{Callum.last_name}"
puts "Created user: #{Callum.first_name} #{Callum.last_name}"

boat = Boat.new(
  boat_type: "Yacht",
  total_occupancy: 50,
  price: 1000
)
# boat attach photo
boat.save
puts "Created Boat"

Boat.create(
  boat_type: "Motorboat",
  total_occupancy: 10,
  price: 100
)
puts "Created Boat"

Boat.create(
  boat_type: "Barge",
  total_occupancy: 25,
  price: 300
)
puts "Created Boat"

Boat.create(
  boat_type: "Amphibious Vehicle",
  total_occupancy: 4,
  price: 1_000_000
)
puts "Created Boat"

Boat.create(
  boat_type: "El Galeón",
  total_occupancy: 200,
  price: 2000
)
puts "Created Boat"

Boat.create(
  boat_type: "Mystery Boat",
  total_occupancy: 3,
  price: 500
)
puts "Created Boat"

Boat.create(
  boat_type: "Car-Boat",
  total_occupancy: 5,
  price: 100
)
puts "Created Boat"

Boat.create(
  boat_type: "Dinghy",
  total_occupancy: 1,
  price: 20000
)
puts "Created Boat"

Boat.create(
  boat_type: "Trawler",
  total_occupancy: 30,
  price: 200
)
puts "Created Boat"
