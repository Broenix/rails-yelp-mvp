# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning restaurants..."
Restaurant.destroy_all

puts "Creating restaurants..."
sandwichman = {name: "Sandwichman", address: "Jouy-en-Josace", phone_number: "0554332556", category:"french"}
burgerman = {name: "Burgerman", address: "Moncuq", phone_number: "0534532556", category:"belgian"}
sushiman = {name: "Sushiman", address: "Japon-city", phone_number: "0654332556", category:"japanese"}
spaghettiman = {name: "Spaghettiman", address: "Mamamiaville", phone_number: "0554382556", category:"italian"}
chineseman = {name: "Chineseman", address: "Dunkerque", phone_number: "0554332506", category:"chinese"}

[sandwichman, burgerman, sushiman, spaghettiman, chineseman].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
