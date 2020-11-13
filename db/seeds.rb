# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all


Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "Strawberry")
Ingredient.create(name: "Raspberry")

Ingredient.create(name: "Rum")
Ingredient.create(name: "Bacardi")
Ingredient.create(name: "Whiskey")
Ingredient.create(name: "Vodka")

@psm2 = Cocktail.create(name: "Pornstar Martini")
@vodka2 = Ingredient.create(name: "Vodka2")
Dose.create( description: "2 cl", ingredient_id: @vodka2.id, cocktail_id: @psm2.id)
file = URI.open('https://img2.goodfon.com/wallpaper/nbig/6/1d/tropical-drink-fresh-fruit-990.jpg')
@psm2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

