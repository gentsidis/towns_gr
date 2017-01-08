# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "First I must destroy all data..."
puts
puts "Deleting Regions"
Region.destroy_all
puts "-- Regions destroyed"
Prefecture.destroy_all
puts "-- Prefectures destroyed"
RegionalUnity.destroy_all
puts "-- Regional Unities destroyed"
KalCity.destroy_all
puts "-- Kalikrates Cities destroyed"
KapCity.destroy_all
puts "-- Kapodestrias Cities destroyed"
Section.destroy_all
puts "-- Sections destroyed"
Town.destroy_all
puts "-- Towns destroyed"
puts "Now I'm ready to seed..."

puts "-- Populating Regions..."
json=ActiveSupport::JSON.decode(File.read('db/seeds/regions.json'))
json.each do |a|
	Region.create!(id: a['_id'], name: a['name'])
end

puts "-- Populating Prefectures..."
json=ActiveSupport::JSON.decode(File.read('db/seeds/Prefectures.json'))
json.each do |a|
	Prefecture.create!(id: a['_id'], name: a['name'], region_id: a['region_id'])
end

puts "-- Populating Regional Unities..."
json=ActiveSupport::JSON.decode(File.read('db/seeds/regional_unities.json'))
json.each do |a|
	RegionalUnity.create!(id: a['_id'], name: a['name'], region_id: a['region_id'])
end

puts "-- Populating Kalikrates Cities..."
json=ActiveSupport::JSON.decode(File.read('db/seeds/kal_cities.json'))
json.each do |a|
	KalCity.create!(id: a['_id'], name: a['name'], title: a['type'], regional_unity_id: a['regional_unity_id'])
end

puts "-- Populating Kapodestrias Cities..."
json=ActiveSupport::JSON.decode(File.read('db/seeds/kap_cities.json'))
json.each do |a|
	KapCity.create!(id: a['_id'], name: a['name'], title: a['type'], prefecture_id: a['prefecture_id'])
end

puts "-- Populating Sections..."
json=ActiveSupport::JSON.decode(File.read('db/seeds/sections.json'))
json.each do |a|
	Section.create!(id: a['_id'], name: a['name'], kal_city_id: a['kal_city_id'])
end

puts "...finaly..."
puts "-- Populating Towns..."
json=ActiveSupport::JSON.decode(File.read('db/seeds/towns.json'))
json.each do |a|
	Town.create!(id: a['_id'], name: a['name'], title: a['type'], population: a['population'], kap_townID: a['kap_town_id'], kal_base: a['kal_base'], kal_townID: a['kal_town_id'], section_id: a['section_id'], kal_type: a['kal_type'], kap_type: a['kap_type'], kap_city_id: a['kap_city_id'])
end

User.create!(name:"gap", password:"g4481a75")
puts "That's all!!! Thank you for waiting!"