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
State.destroy_all
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

usa = State.create(name: 'USA')
italy = State.create(name: 'Italy')
spain = State.create(name: 'Spain')
germany = State.create(name: 'Germany')
canada = State.create(name: 'Canada')
senegal = State.create(name: 'Senegal')
s_Africa = State.create(name: 'South Africa')
ethiopia = State.create(name: 'Ethiopia')
mexico = State.create(name: 'Mexico')
brazil = State.create(name: 'Brazil')
peru = State.create(name: 'Peru')
barbados = State.create(name: 'Barbados')
austrlia = State.create(name: 'Austrlia')
japan = State.create(name: 'Japan')
china = State.create(name: 'China')
iran = State.create(name: 'Iran')
Lebanon = State.create(name: 'Lebanon')
Morocco = State.create(name: 'Morocco')
Tunisia = State.create(name: 'Tunisia')
