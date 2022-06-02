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
