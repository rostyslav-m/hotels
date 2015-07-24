# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |n|
  User.create!(username: Faker::Name.name, email: Faker::Internet.email, password: "12345678")
end

User.create!(email: "guest@guest.com", password: "12345678", username: "Guest")

20.times do |n|
  Hotel.create!(title: Faker::Company.name, stars: rand(2..5), breakfast: random_boolean = [true, false].sample, description: Faker::Lorem.paragraph(8, true, 8), price: Faker::Number.decimal(2), user_id: User.find(rand(1..10)).id)
end

20.times do |n|
  Address.create!(country: Faker::Address.country, state: Faker::Address.state, city: Faker::Address.city, street: Faker::Address.street_address, hotel_id: (n+1))
end

100.times do |n|
  Comment.create!(msg: Faker::Lorem.paragraph(2, true, 2), rate: rand(2..5), hotel_id: Hotel.find(rand(1..20)).id, user_id: User.find(rand(1..10)).id)
end