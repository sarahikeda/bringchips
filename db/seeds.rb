# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  User.create(name:"Sarah", username: "Ing", email:"chocolate@gmail.com", password:"chocolate", street_address: "351 West Hubbard Street", city: "Chicago", state: "IL", zip: 60654, bio: "I whip up a mean three-bean chili!")
end

10.times do
  Event.create(title: Faker::Lorem.word, description: Faker::Lorem.sentence, street_address: Faker::Address.street_address, city: Faker::Address.city, state: "TX", zip: Faker::Address.zip, date: "05/08/2015", start_time: "7" )
end




users = User.all
events = Event.all

10.times do
  Occasion.create(user: users.sample, event: events.sample)
end

occasions = Occasion.all

10.times do
  Dish.create(name: Faker::Commerce.color, course: "Lunch", gluten_free: true)
end