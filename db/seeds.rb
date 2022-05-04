# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
puts "Generando Seeds"

Restaurant.destroy_all

5.times do
  puts "Creando los restaurant"
  r = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.street_name, category: CATEGORIES.sample)
  r.save
end
