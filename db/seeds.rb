# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recipe.destroy_all
Ingredient.destroy_all

chicken = Recipe.create(title: "Chicken Salad")
pasta = Recipe.create(title: "Alfredo Pasta")


chicken.ingredients.create(name: "Lettuce", quantity: "A Decent amount")
pasta.ingredients.create(name: "pasta", quantity: "200 grams")
