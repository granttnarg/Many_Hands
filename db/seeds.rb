# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting db"
Spot.delete_all if Rails.env.development?

Event.delete_all
User.delete_all if Rails.env.development?
Request.delete_all if Rails.env.development?

event_photo_one = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1567070502/mq6ghjowyicxudztjdmk.jpg" #hands love heart
cover_photo_one = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1567070501/n5lckh9hiwdqaqgqagak.jpg" #flags
profile_photo_one = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1567057736/images_1_lcy59j.jpg" #guy with glasses

user_one = User.new(username: "petey123", first_name: "Pete", last_name: "Peterson", email: "pete@example.com", bio: "I love to through unique and one off events full of colour and excitement", location: "Kreuzberg", looking_for: "Creatives with character!!", password: "123456", is_creative: false)
user_one.remote_coverphoto_url = cover_photo_one
user_one.remote_profile_photo_url = profile_photo_one

event_one = Event.new(name: "Big Fun")
event_one.user = user_one
event_one.remote_photo_url = event_photo_one
user_one.save!
event_one.save!
spot_one = Spot.new(role: "saxophone", description: "Looking for someone who can improvise with a DJ", category: 1 )
spot_one.event = event_one
spot_one.save!

puts "Big Fun with one spot"
puts "created Pete"



event_photo_two = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1567057809/moth1_l1edvb.jpg" #moth club band pic
cover_photo_two = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1567057814/misty-miller-moth-club-hackney-01_qzoyzf.jpg" #moth club celebration pic
profile_photo_two = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1567057875/blank-avatar_iqiwne.png" #blank avatar


user_two = User.new(username: "Jim123", first_name: "Jim", last_name: "Jimmer", email: "jim@example.com", bio: "I put on regular band nights, we love to collobrate with live digital visual artists", location: "Mitte", looking_for: "Musicians and digital artists", password: "123456", is_creative: false)
user_two.remote_coverphoto_url = cover_photo_two
user_two.remote_profile_photo_url = profile_photo_two


event_two = Event.new(name: "The Big Band Night")
event_two.user = user_two
event_two.remote_photo_url = event_photo_two


user_two.save!
event_two.save!

puts "created Jim"


spot_two = Spot.new(role: "digital artist", description: "Looking for someone who can work with digital projections to work with a live band", category: 1 )
spot_two.event = event_two
spot_two.save!
spot_three = Spot.new(role: "singer", description: "Looking for a powerful rnb singer", category: 1 )
spot_three.event = event_two
spot_three.save!

puts "created THE BIG BAND NIGHT WITH 2 SPOTS"

user_three = User.new(username: "Jorge123", first_name: "Jorge", last_name: "Calero", bio: "I love to paint weird colour shapes, and have been experimenting with live paiting over music", location: "Berlin", looking_for: "Musicians and musical events to collaborate with", email: "jorge@example.com", password: "123456", is_creative: true, skill: "painter", style: "abstract", category: 1)


cover_photo_three = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1567057669/steve-johnson-VCLNNMRl07k-unsplash_aaczvf.jpg" #canvas
profile_photo_three = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1567070507/fwzekzmyw6jnr229jqn4.jpg" #jorge


user_three.remote_coverphoto_url = cover_photo_three
user_three.remote_profile_photo_url = profile_photo_three
user_three.save!


puts "created Jorge"

user_four = User.new(username: "Tommy123", first_name: "Tom", last_name: "Thomas", bio: "Strong leader guitarist, big into metal and psych rock also love to improvise", location: "Berlin", looking_for: "Rock Band Events", email: "tom@example.com", password: "123456", is_creative: true, skill: "lead guitar", style: "metal/rock/psych", category: 0)


cover_photo_four = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1567057654/thiago-borrere-alvim-bf8APnBxoCk-unsplash_az7c8h.jpg"
profile_photo_four = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1567057897/1562701581773_ofb6s2.png"


user_four.remote_coverphoto_url = cover_photo_four
user_four.remote_profile_photo_url = profile_photo_four
user_four.save!

puts "created Tommy"

user_five = User.new(username: "billy123", first_name: "Bill", last_name: "Billy-Bob", bio: "Digital and CGI artist who specialising in projections and installations at events", location: "East Berlin", looking_for: "Musicians and musical events to collaborate with", email: "bill@example.com", password: "123456", is_creative: true, skill: "digital artist", style: "installation/projection", category: 1)


profile_photo_five = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1567069636/pqpaeze6hjel2nhtgh9f.jpg"
cover_photo_five = "https://res.cloudinary.com/dqnhjr33l/image/upload/v1567057906/680w_x395h_c-reduced_JLS_jsegvb.jpg"


user_five.remote_coverphoto_url = cover_photo_five
user_five.remote_profile_photo_url = profile_photo_five
user_five.save!

puts "created Bill"

request_one = Request.new(status: 1, note: "Would love to work with you, check my profile to see my projections")
request_one.spot = spot_two
request_one.user_id = user_five.id
request_one.save!

request_two = Request.new(status: 0, note: "Would love to work with you, check my profile to see my projections")
request_two.spot = spot_one
request_two.user_id = user_five.id
request_two.save!

puts "created two requests"


puts "created seeds"

