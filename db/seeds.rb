 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."

Booking.destroy_all
Bike.destroy_all
User.destroy_all

maria = User.create(first_name: "Maria", last_name: "Olbrich", email: "maria@gmail.com", password: "lewagon")
monica = User.create(first_name: "Monica", last_name: "Jara", email: "monica@gmail.com", password: "lewagon")

puts "Creating bikes..."

# The bike can´t be saved without user id, added it"
test_bike_1 = Bike.create!(name: "Cool e-bike", description: "very nice bike, bearly used because I have
  another one. It was a shame to have this one in my basement without use", model: "e-bike", location: "Berlin", year: 2021, price: 25.99, user_id: maria.id)
puts "created #{test_bike_1.id}"

test_bike_2 = Bike.create!(name: "Stevens", description: "These are the tecnical details. The bike is for beginners and
  very easy to ride.", model: "XPF-8545", location: "Berlin-Spandau", year: 2015, price: 65.99, user_id: monica.id)
puts "created #{test_bike_2.id}"

test_bike_3 = Bike.create!(name: "Little bike", description: "Bike for children between 5 and 7 years. It is too
  small for my son. Everything is working and for the price I can offer a helmet on top", model: "childweels", location: "Berlin-Mitte", year: 2020, price: 40, user_id: maria.id)
puts "created #{test_bike_3.id}"

booking_1 = Booking.create(start: Date.new(2022, 4, 3), end: Date.new(2022, 4, 6), user_id: maria.id, bike_id: test_bike_1.id)
puts "created #{booking_1.id}"

puts "seed finished"
