# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

Phone.create([
  { tag_id: 'a1b2c3d4', owner: 'John Doe', phone_model: 'iPhone 12', contact: 'john.doe@example.com', status: 'lost' },
  { tag_id: 'd4e5f6g7', owner: 'Jane Smith', phone_model: 'Samsung Galaxy S20', contact: 'jane.smith@example.com', status: 'lost' }
])
