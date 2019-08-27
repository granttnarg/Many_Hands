# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting db"
Spot.destroy_all if Rails.env.development?
Event.destroy_all
User.destroy_all if Rails.env.development?

user_one = User.new(first_name: "Pete", last_name: "Petey", email: "pete@example.com", password: "123456")
event_one = Event.new(name: "The Big Party")
event_one.user = user_one
user_one.save!
event_one.save!
spot_one = Spot.new(role: "saxophone", description: "Looking for someone who can improvise", category: 1 )
spot_one.event = event_one
spot_one.save!

user_two = User.new(first_name: "Jim", last_name: "Jimmy", email: "jim@example.com", password: "123456")
event_two = Event.new(name: "Best Event Ever")
event_two.user = user_two
user_two.save!
event_two.save!
spot_two = Spot.new(role: "live painter", description: "Looking for someone to paint a cavans live to the rhythm of a band", category: 2 )
spot_two.event = event_two
spot_two.save!
spot_three = Spot.new(role: "singer", description: "Looking for a powerful rnb singer", category: 1 )
spot_three.event = event_two
spot_three.save!



puts "created seed, 1 user with 1 event and 1 spot &&&& 1 user with 1 event with 2 spots"

