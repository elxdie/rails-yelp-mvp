# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

category = %w[chinese italian japanese french belgian]

# Write a seed to insert 7 restaurants in the database
puts 'Creating restaurants...'
7.times do
  Restaurant.create(
    name: Faker::Name.name,
    # puts full_address as .address does not exist in faker
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: category.sample
  )
end
puts 'Finished!'
