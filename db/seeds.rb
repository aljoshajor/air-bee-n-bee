# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
User.destroy_all
Bee.destroy_all

FEATURES = ["Cool", "Funny", "Dramatic", "Interesting", "Funky", "Sexy", "Crazy"]

user_1 = User.new(name: "BeeFan42069", password: "123456", email: "joe@fakeemail.com")
user_1.save
user_2 = User.new(name: "BuzzBoy", password: "123456", email: "test@test.com")
user_2.save
user_3 = User.new(name: "HoneyQueen", password: "123456", email: "test2@test.com")
user_3.save
user_4 = User.new(name: "LeWagon432", password: "123456", email: "test3@test.com")
user_4.save

Bee.create(name: "David", description: "One REALLY funky bee. Likes disco", user_id: user_1.id, features: "Funky", address: "Viktoriapark, Berlin", image: "bee-big")
puts "saving"
Bee.create(name: "Michael", description: "One REALLY dramatic bee, dislikes cheese", user_id: user_2.id, features: "Dramatic", address: "Rudi-Dutschke-Straße 26, Berlin", image: "4" )
puts "saving"
Bee.create(name: "Felix", description: "A REALLY Crazy bee, unsuitable for commercial use", user_id: user_3.id, features: "Crazy", address: "Am Wriezener Bahnhof, Berlin", image: "bee-face" )
puts "saving"
Bee.create(name: "Cleopatra", description: "A super cool bee - studied fashion marketing at King's College, London", user_id: user_4.id, features: "Cool", address: "Rosa-Luxemburg-Platz, Berlin", image: "e" )
puts "saving"
Bee.create(name: "Fridolin", description: "A sexy bee - too hot to handle", user_id: user_1.id, features: "Sexy", address: "Platz der Republik 1, Berlin", image: "11" )
puts "saving"
Bee.create(name: "Frank", description: "A pretty funny bee", user_id: user_3.id, features: "Funny", address: "Mehringdamm 32, Berlin", image: "mitte" )
puts "saving"