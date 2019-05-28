# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Accommodation.create!( guest_number: 3, rooms_number: 5, beds_number: 6, toilet_number: 5, address: "hdjhrjugr",user: User.last, price_per_night: 56)

Reservation.create!(arrival_date: DateTime.parse("08/09/2019"), departure_date: DateTime.parse("23/09/2019"), user: User.last, guest_number: 3, total_price: 45, accommodation: Accommodation.last, status: "pending" )
