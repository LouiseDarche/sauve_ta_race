# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Creating 5 users"

5.times do
  user = User.new(
    email: Faker::Internet.email,
    password: "password",
    name: Faker::HarryPotter.character,
    location: Faker::HarryPotter.location,
    status: ["trainee", "trainer"].sample,
    specie: Faker::HarryPotter.house
    )
  user.save!
end
puts "#{User.all}"

puts "Creating 6 skills"

running = Skill.new(
  name: "Running bootcamp with a leopard"),
  description: "Learn to run with a leopard, you will never be caught by anyone anymore!",
  location: "Serengeti savanna",
  price: "250",
  image_url
  user:
running.save!



10.times do
  skill = Skill.new(
    name: Faker::Company.name,
    description: Faker::StarWars.quote,
    location: Faker::Address.city,
    price: Faker::Commerce.price,
    user: User.all.sample
    )
  skill.save!
end

puts "Finished!"
