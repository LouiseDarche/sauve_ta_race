# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Booking.destroy_all
Skill.destroy_all
User.destroy_all
Review.destroy_all


puts "Creating 5 users"

5.times do
  user = User.new(
    email: Faker::Internet.email,
    password: "password",
    name: Faker::HarryPotter.character,
    location: Faker::HarryPotter.location,
    status: ["trainee", "trainer"].sample,
    specie: Faker::HarryPotter.house,
    photo: "https://source.unsplash.com/random"
    )
  user.save!
end
puts "#{User.all}"

puts "Cleaning database"

puts "Creating 6 skills"


running = Skill.new(
  name: "Running bootcamp with a leopard",
  description: "Learn to run with a leopard, you will never be caught by anyone anymore!",
  location: "Serengeti savanna",
  category: "running",
  price: "250",
  remote_photo_url: "https://hc8fm03jtw-flywheel.netdna-ssl.com/wp-content/uploads/2016/06/calendar1-600x600_c.jpg",
  user: User.all.sample
  )
running.save!

hiding = Skill.new(
  name: "Hiding bootcamp with a cat",
  description: "Learn to hid with a cat, you will never be caught by anyone anymore!",
  location: "Tokyo, Japan",
  category: "hiding",
  price: "130",
  remote_photo_url: "http://www.holidogtimes.com/it/wp-content/uploads/sites/3/2016/05/cat-hide-seek-13.jpg?2e4e73",
  user: User.all.sample
  )
hiding.save!

fishing = Skill.new(
  name: "Fishing bootcamp with a bear",
  description: "Learn to fish with a bear, you will never starve anymore!",
  location: "Montreal, Canada",
  category: "fishing",
  price: "200",
  remote_photo_url: "https://i.pinimg.com/originals/89/20/83/89208300d0f3be73ee565f6429d13ed2.jpg",
  user: User.all.sample
  )
fishing.save!

swimming = Skill.new(
  name: "Swimming bootcamp with a swordfish",
  description: "Learn to swim with a swordfish, you will never die anymore!",
  location: "Marseille, France",
  category: "swimming",
  price: "100",
  remote_photo_url: "https://teamseafoods.files.wordpress.com/2015/11/swordfish-underwater.jpg",
  user: User.all.sample
  )
swimming.save!

begging = Skill.new(
  name: "Socialise bootcamp with a dog",
  description: "Learn to socialise with a dog, you will never be alone anymore!",
  location: "London, UK",
  category: "begging",
  price: "150",
  remote_photo_url: "https://steemitimages.com/0x0/https://s-media-cache-ak0.pinimg.com/564x/74/88/22/7488228009d153e94a00427f674d54bb.jpg",
  user: User.all.sample
  )
begging.save!

surfing = Skill.new(
  name: "Surfing bootcamp with a goat",
  description: "Learn to surf with a goat, you will never be a looser anymore!",
  location: "Bali, Indonesia",
  category: "surfing",
  price: "300",
  remote_photo_url: "https://cdn.modernfarmer.com/wp-content/uploads/2016/08/goatee-surfing.jpg",
  user: User.all.sample
  )
surfing.save!




puts "Finished!"
