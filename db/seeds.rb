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
Request.destroy_all if Rails.env.development?

event_photo_one = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1566918865/680w_x395h_c-reduced_JLS_rqnpkd.jpg"
cover_photo_one = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1566296013/xa811ufguq5mebljwl8p.jpg"
profile_photo_one = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1566303086/kfudn3dzyobcebdkauqs.jpg"

user_one = User.new(first_name: "Pete", last_name: "Petey", email: "pete@example.com", password: "123456", is_creative: false, skill: "painter")
user_one.remote_coverphoto_url = cover_photo_one
user_one.remote_profile_photo_url = profile_photo_one

event_one = Event.new(name: "The Big Party")
event_one.user = user_one
event_one.remote_photo_url = event_photo_one
user_one.save!
event_one.save!
spot_one = Spot.new(role: "saxophone", description: "Looking for someone who can improvise", category: 1 )
spot_one.event = event_one
spot_one.save!




event_photo_two = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1566918874/anthony-delanoix-hzgs56Ze49s-unsplash_sq92xx.jpg"
cover_photo_two = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1565967626/photo-1512813195386-6cf811ad3542_n7awjf.jpg"
profile_photo_two = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1566303089/xrlmafij2gkxr6sfuqkc.jpg"


user_two = User.new(first_name: "Jim", last_name: "Jimmy", email: "jim@example.com", password: "123456", is_creative: false, coverphoto: "https://res.cloudinary.com/dqnhjr33l/image/upload/v1565967626/photo-1512813195386-6cf811ad3542_n7awjf.jpg", profile_photo: "https://res.cloudinary.com/dqnhjr33l/image/upload/v1566303089/xrlmafij2gkxr6sfuqkc.jpg" )
user_two.remote_coverphoto_url = cover_photo_two
user_two.remote_profile_photo_url = profile_photo_two


event_two = Event.new(name: "Best Event Ever")
event_two.user = user_two
event_two.remote_photo_url = event_photo_two




user_two.save!
event_two.save!


spot_two = Spot.new(role: "live painter", description: "Looking for someone to paint a cavans live to the rhythm of a band", category: 2 )
spot_two.event = event_two
spot_two.save!
spot_three = Spot.new(role: "singer", description: "Looking for a powerful rnb singer", category: 1 )
spot_three.event = event_two
spot_three.save!



user_three = User.new(first_name: "Bill", last_name: "Billy", email: "bill@example.com", password: "123456", is_creative: true, skill: "painter", category: 1)


cover_photo_three = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1566296014/q8jcbww960exrmyktpdq.jpg"
profile_photo_three = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1566555775/yerzqaags4tb59ltirsb.jpg"


user_three.remote_coverphoto_url = cover_photo_three
user_three.remote_profile_photo_url = profile_photo_three
user_three.save!

user_four = User.new(first_name: "Tom", last_name: "Thomas", email: "tom@example.com", password: "123456", is_creative: true, skill: "guitar player", category: 0)


cover_photo_three = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1566296014/q8jcbww960exrmyktpdq.jpg"
profile_photo_three = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1566555775/yerzqaags4tb59ltirsb.jpg"


user_four.remote_coverphoto_url = cover_photo_three
user_four.remote_profile_photo_url = profile_photo_three
user_four.save!


user_five = User.new(first_name: "Man", last_name: "Boy", email: "man@example.com", password: "123456", is_creative: true, skill: "stage hand", category: 3)


cover_photo_three = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1566296014/q8jcbww960exrmyktpdq.jpg"
profile_photo_three = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1566555775/yerzqaags4tb59ltirsb.jpg"


user_five.remote_coverphoto_url = cover_photo_three
user_five.remote_profile_photo_url = profile_photo_three
user_five.save!

request_one = Request.new(status: 0, note: "Would love to paint at your event")
request_one.spot = spot_two
request_one.user_id = user_three.id
request_one.save!




puts "created seed, 1 user with 1 event and 1 spot &&&& 1 user with 1 event with 2 spots, 1 creative user, 1 request"

