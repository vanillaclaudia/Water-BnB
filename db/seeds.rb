# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

user1 = User.create(email: "alex@gmail.com", password: "123456")
user2 = User.create(email: "callum@gmail.com", password: "123456")


# puts "Created user: #{Callum.first_name} #{Callum.last_name}"



puts "creating boats"
boat1 = Boat.new(
  address: "19 Methley Mount, London",
  price: 30000,
  boat_type: "Basic Yacht",
  total_occupancy: 300,
  user: user1
)
file = URI.open("https://www.yachtsinternational.com/.image/ar_233:100%2Cc_fill%2Ccs_srgb%2Cg_faces:center%2Cq_auto:good%2Cw_3840/MTQ3MzM2MDExNzAwMTg0ODc5/remember_when_hi-03577-credit-quin-bisset.webp")
boat1.photo.attach(io: file, filename: "basic-yacht.webp", content_type: "image/webp")
boat1.save!

boat2 = Boat.new(
  address: "62100 Calais, France",
  price: 999,
  boat_type: "Hydrofoil",
  total_occupancy: 4,
  user: user2
)
file = URI.open("https://www.economist.com/img/b/1424/801/90/sites/default/files/images/2021/02/articles/main/20210220_stp001.jpg")
boat2.photo.attach(io: file, filename: "hydrofoil.jpg", content_type: "image/jpg")
boat2.save!

boat3 = Boat.new(
  address: "6Moll de Barcelona, s/n, 08039 Barcelona, Spain",
  price: 25,
  boat_type: "Barge",
  total_occupancy: 45,
  user: user2
)
file = URI.open("https://media.istockphoto.com/photos/barge-on-the-river-seine-at-sunset-paris-france-picture-id944076910?k=20&m=944076910&s=612x612&w=0&h=TvOQtHwJFgwIxJ5dMPDAr8B_XCuYrSNfFBJNhYVdRB0=")
boat3.photo.attach(io: file, filename: "hydrofoil.jpeg", content_type: "image/jpeg")
boat3.save!


boat4 = Boat.new(
  address: "9C3574W6+QF",
  price: 99999999,
  boat_type: "Phil",
  total_occupancy: 1,
  user: user1
)
file = URI.open("https://gofreediving.co.uk/wp-content/uploads/2017/05/Go-Freediving-10-things-you-can-find-underwater-underwater-post-office.jpg")
boat4.photo.attach(io: file, filename: "phil.jpg", content_type: "image/jpg")
boat4.save!

boat5 = Boat.new(
  address: "1675 Kråkerøy, Norway",
  price: 50000,
  boat_type: "The Black Pearl",
  total_occupancy: 50,
  user: user2
)
file = URI.open("https://classic-sailing.com/wp-content/uploads/2020/06/from_facebook_permission_requested_-_europa_1.jpg")
boat5.photo.attach(io: file, filename: "blackpearl.jpg", content_type: "image/jpg")
boat5.save!

boat6 = Boat.new(
  address: "Palleskestraße 19, 65929 Frankfurt am Main, Germany",
  price: 400,
  boat_type: "The Special",
  total_occupancy: 2,
  user: user2
)
file = URI.open("https://i2-prod.cambridge-news.co.uk/incoming/article17643526.ece/ALTERNATES/s615/0_sunk-car-1.jpg")
boat6.photo.attach(io: file, filename: "notacar.jpg", content_type: "image/jpg")
boat6.save!

boat7 = Boat.new(
  address: "Rua Duarte Borges 70, Rosto do Cão, 9500-719 Ponta Delgada, Portugal",
  price: 9999,
  boat_type: "Dazzle Camouflage",
  total_occupancy: 2,
  user: user2
)
file = URI.open("https://1.bp.blogspot.com/-ikWVaj7a9QI/YEIOBfn_D1I/AAAAAAAAoU8/oTWtTZQsET804FUFAiN_wxaBjIDp86IwgCLcBGAsYHQ/w1200-h630-p-k-no-nu/dazzle-camouflage-11.jpg")
boat7.photo.attach(io: file, filename: "notacar.jpg", content_type: "image/jpg")
boat7.save!
