# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Bee.destroy_all

FEATURES = ["Cool", "Funny", "Dramatic", "Interesting", "Funky", "Sexy", "Crazy"]

user_1 = User.new(name: "Bee Fan 42069", password: "123456", email: "joe@fakeemail.com")
user_1.save
user_2 = User.new(name: "I love Bees!", password: "123456", email: "test@test.com")
user_2.save

Bee.create(name: "david", description: "one REALLY funky bee", user_id: user_1.id, features: FEATURES.sample, address: "Viktoriapark, Berlin")
puts "saving"
Bee.create(name: "michael", description: "one REALLY vindictive bee", user_id: user_1.id, features: FEATURES.sample, address: "Rudi-Dutschke-Straße 26, 10969 Berlin" )
puts "saving"
Bee.create(name: "felix", description: "one REALLY hilarious bee", user_id: user_2.id, features: FEATURES.sample, address: "Am Wriezener Bahnhof, 10243 Berlin" )
puts "saving"
Bee.create(name: "cleopatra", description: "one REALLY coool bee", user_id: user_2.id, features: FEATURES.sample, address: "Rosa-Luxemburg-Platz, 10178 Berlin" )
puts "saving"
Bee.create(name: "fridolin", description: "one REALLY friendly bee", user_id: user_1.id, features: FEATURES.sample, address: "Platz der Republik 1, 11011 Berlin" )
puts "saving"
Bee.create(name: "frank", description: "one REALLY funny bee", user_id: user_2.id, features: FEATURES.sample, address: "Mehringdamm 32, 10961 Berlin" )
puts "saving"