# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#   clearing database
puts "Clearing database"
Booking.destroy_all
Space.destroy_all
User.destroy_all
puts "Database cleared"



# Create users
user1 = User.create(email: 'tester1@example.com', password: 'password')
user2 = User.create(email: 'tester2@example.com', password: 'password')

puts "#{User.count} Users created"

# Create spaces
space1 = Space.create(
  id: 1,
  size: 'Large',
  price: 100.0,
  location: 'Downtown',
  amenties: 'WiFi, Parking',
  user: user1,
  name: 'Conference Room 1',
  description: 'A spacious conference room for meetings.'
)

space2 = Space.create(
  id: 2,
  size: 'Medium',
  price: 50.0,
  location: 'Suburb',
  amenties: 'Projector, Whiteboard',
  user: user2,
  name: 'Meeting Room 2',
  description: 'Ideal for small team meetings.'
)

puts "#{Space.count} spaces created"

# Create bookings
Booking.create(duration: 2, date: Date.today, user: user1, space: space1)
Booking.create(duration: 1, date: Date.tomorrow, user: user2, space: space2)

puts "#{Booking.count} Bookings created"
puts 'Seed data created successfully!'
