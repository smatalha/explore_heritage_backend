# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'
# require "uri"
# require "net/http"

Category.destroy_all
Region.destroy_all
# User.destroy_all

puts "Seeded"

cultural = Category.create(name: 'Cultural')
natural = Category.create(name: 'Natural')
mixed = Category.create(name: 'Mixed')

ena = Region.create(name: 'Europe and North America')
asia = Region.create(name: 'Asia and the Pasific')
latin = Region.create(name: 'Latin America and the Caribian')
africa = Region.create(name: 'Africa')
arab = Region.create(name: 'Arab States')

