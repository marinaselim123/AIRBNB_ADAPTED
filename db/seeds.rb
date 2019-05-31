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

jean = User.create!(
  first_name: 'Jean',
  last_name: 'Dupont',
  address: '20 rue de Rome, Marseille',
  email: 'jean@gmail.com',
  password: 'password'
)

marina = User.create!(
  first_name: 'Marina',
  last_name: 'Selim',
  address: '22 rue de Rome, Marseille',
  email: 'marina@gmail.com',
  password: 'password'
)

puts "Creating accommodations..."

Accommodation.create!(
    user: jean,
    guest_number: rand(1..4),
    rooms_number: rand(1..5),
    beds_number: rand(1..4),
    toilet_number: rand(1..4),
    address: "167 rue Paradis, Marseille",
    price_per_night: rand(20..100),
    accommodation_type: "Loft with panorama",
    remote_photo_url: "http://www.freshdesignpedia.com/wp-content/uploads/60-inspiring-balcony-ideas-so-are-you-a-fantastic-balcony-design/designer-balcony-ideas-summer-house-with-sea-view-gorgeous.jpg"
  )


  Accommodation.create!(
    user: jean,
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
    user: jean,
    guest_number: rand(1..4),
    rooms_number: rand(1..5),
    beds_number: rand(1..4),
    toilet_number: rand(1..4),
    address: "Stade Vélodrome, Marseille",
    price_per_night: rand(20..100),
    accommodation_type: "Studio behind the stadium",
    remote_photo_url: "https://lesjours.fr/ressources/image/ep2-velodrome-img-header.jpeg"
  )


   Accommodation.create!(
    user: marina,
    guest_number: rand(1..4),
    rooms_number: rand(1..5),
    beds_number: rand(1..4),
    toilet_number: rand(1..4),
    address: "Vieux Port, Marseille",
    price_per_night: rand(20..100),
    accommodation_type: "Flat at Le Vieux Port",
    remote_photo_url: "https://www.ahstatic.com/photos/0542_ho_00_p_1024x768.jpg"
  )


Accommodation.create!(
    user: marina,
    guest_number: rand(1..4),
    rooms_number: rand(1..5),
    beds_number: rand(1..4),
    toilet_number: rand(1..4),
    address: "Tour Eiffel, Paris",
    price_per_night: rand(20..100),
    accommodation_type: "Appartment with a view",
    remote_photo_url: "http://www.book-a-flat.com/magazine/wp-content/uploads/2015/10/terrasse-vue-tour-eiffel-paris.jpg"
    )

Accommodation.create!(
    user: marina,
    guest_number: rand(1..4),
    rooms_number: rand(1..5),
    beds_number: rand(1..4),
    toilet_number: rand(1..4),
    address: "Lisbonne",
    price_per_night: rand(20..100),
    accommodation_type: "Studio in the center",
    remote_photo_url: "https://t-ec.bstatic.com/images/hotel/max1024x768/351/35166590.jpg"
    )

# Reservation.create!(arrival_date: DateTime.parse("08/09/2019"), departure_date: DateTime.parse("23/09/2019"), user: User.last, guest_number: 3, total_price: 45, accommodation: Accommodation.last, status: "pending" )

Reservation.create!(arrival_date: DateTime.parse("08/09/2019"), departure_date: DateTime.parse("23/09/2019"), user: User.last, guest_number: 3, total_price: 45, accommodation: Accommodation.last, status: "pending" )
Reservation.create!(arrival_date: DateTime.parse("08/03/2020"), departure_date: DateTime.parse("23/04/2020"), user: User.last, guest_number: 2, total_price: 50, accommodation: Accommodation.first, status: "pending" )


