# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#destroy
puts "Cleaning up database"
Flat.destroy_all

#seed
puts "Populating database with Flats"

100.times do
  flat = Flat.create!(
    name: Faker::Movies::LordOfTheRings.location,
    address: Faker::Address.full_address,
    description: Faker::Books::Dune.saying,
    price_per_night: rand(5..500),
    number_of_guests: rand(10..5000)
  )
  puts "Flat#{flat.id} has been created"
end

puts "done"
