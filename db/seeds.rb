# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning DB..."
Reservation.destroy_all
Accommodation.destroy_all
User.destroy_all

puts "Creating users..."

toto = User.create!(
  first_name: 'Toto',
  last_name: 'Titi',
  address: '20 rue de Rome, Marseille',
  email: 'toto@gmail.com',
  password: 'password'
)

User.create!(
  first_name: 'Titi',
  last_name: 'Toto',
  address: '22 rue de Rome, Marseille',
  email: 'titi@gmail.com',
  password: 'password'
)

puts "Creating accommodations..."

Accommodation.create!(
    user: toto,
    guest_number: rand(1..4),
    rooms_number: rand(1..5),
    beds_number: rand(1..4),
    toilet_number: rand(1..4),
    address: "167 rue Paradis, Marseille",
    price_per_night: rand(20..100),
    accommodation_type: "Loft with panorama",
    remote_photo_url: "https://odis.homeaway.com/odis/listing/fcf8f760-1bb2-4862-b678-bdc79ba1202f.c10.jpg"
  )


  Accommodation.create!(
    user: toto,
    guest_number: rand(1..4),
    rooms_number: rand(1..5),
    beds_number: rand(1..4),
    toilet_number: rand(1..4),
    address: "167 rue Paradis, Marseille",
    price_per_night: rand(20..100),
    accommodation_type: "Flat in the city center",
    remote_photo_url: "https://odis.homeaway.com/odis/listing/766d0e42-50a6-4745-8ff1-0ca5f7ce6210.c10.jpg"
  )

   Accommodation.create!(
    user: toto,
    guest_number: rand(1..4),
    rooms_number: rand(1..5),
    beds_number: rand(1..4),
    toilet_number: rand(1..4),
    address: "12 allée marcel leclerc, Marseille",
    price_per_night: rand(20..100),
    accommodation_type: "Studio behind the stadium",
    remote_photo_url: "https://lesjours.fr/ressources/image/ep2-velodrome-img-header.jpeg"
  )


   Accommodation.create!(
    user: toto,
    guest_number: rand(1..4),
    rooms_number: rand(1..5),
    beds_number: rand(1..4),
    toilet_number: rand(1..4),
    address: "25 boulevard garoutte, Marseille",
    price_per_night: rand(20..100),
    accommodation_type: "Flat at Le Vieux Port",
    remote_photo_url: "https://www.artcom.fr/img/projets/normal/appart2.jpg"
  )


Accommodation.create!(
    user: toto,
    guest_number: rand(1..4),
    rooms_number: rand(1..5),
    beds_number: rand(1..4),
    toilet_number: rand(1..4),
    address: "Tour Eiffel, Paris",
    price_per_night: rand(20..100),
    accommodation_type: "Cozy apartment in the center",
    remote_photo_url: "https://madeinmarseille.net/actualites-marseille/fontaine-place-castellane-tourisme-marseille.jpg"
    )


# Reservation.create!(arrival_date: DateTime.parse("08/09/2019"), departure_date: DateTime.parse("23/09/2019"), user: User.last, guest_number: 3, total_price: 45, accommodation: Accommodation.last, status: "pending" )

Reservation.create!(arrival_date: DateTime.parse("08/09/2019"), departure_date: DateTime.parse("23/09/2019"), user: User.last, guest_number: 3, total_price: 45, accommodation: Accommodation.last, status: "pending" )
Reservation.create!(arrival_date: DateTime.parse("08/03/2020"), departure_date: DateTime.parse("23/04/2020"), user: User.last, guest_number: 2, total_price: 50, accommodation: Accommodation.first, status: "pending" )


