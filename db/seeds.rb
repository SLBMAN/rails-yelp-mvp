# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "belgian", phone_number: "0160072993")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "0160072993")
puts "Created Pizza East"
Restaurant.create!(name: "Bobun Style", address: "Pekin", category: "chinese", phone_number: "0160072993")
puts "Created Bobun Style"
Restaurant.create!(name: "Sushi Delicious", address: "Tokyo", category: "japanese", phone_number: "0160072993")
puts "Created Sushi Delicious"
Restaurant.create!(name: "Ratatouille", address: "Paris", category: "french", phone_number: "0160072993")
puts "Created Ratatouile"


# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
