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


2.times do
  Accommodation.create!(
    user: toto,
    guest_number: rand(1..4),
    rooms_number: rand(1..5),
    beds_number: rand(1..4),
    toilet_number: rand(1..4),
    address: "167 rue Paradis, Marseille",
    price_per_night: rand(20..100),
    accommodation_type: "Flat in the city center"
  )
end
3.times do
   Accommodation.create!(
    user: toto,
    guest_number: rand(1..4),
    rooms_number: rand(1..5),
    beds_number: rand(1..4),
    toilet_number: rand(1..4),
    address: "12 allée marcel leclerc, Marseille",
    price_per_night: rand(20..100),
    accommodation_type: "Studio behind the stadium"
  )

end
2.times do
   Accommodation.create!(
    user: toto,
    guest_number: rand(1..4),
    rooms_number: rand(1..5),
    beds_number: rand(1..4),
    toilet_number: rand(1..4),
    address: "25 boulevard garoutte, Marseille",
    price_per_night: rand(20..100),
    accommodation_type: "Cozy apartment in the center"
  )

end


Accommodation.create!(
    user: toto,
    guest_number: rand(1..4),
    rooms_number: rand(1..5),
    beds_number: rand(1..4),
    toilet_number: rand(1..4),
    address: "Tour Eiffel, Paris",
    price_per_night: rand(20..100),
    accommodation_type: "Cozy apartment in the center"
    )


# Reservation.create!(arrival_date: DateTime.parse("08/09/2019"), departure_date: DateTime.parse("23/09/2019"), user: User.last, guest_number: 3, total_price: 45, accommodation: Accommodation.last, status: "pending" )
