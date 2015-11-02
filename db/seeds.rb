# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
Category.create!(name: "Starters")
Category.create!(name: "Mains")
Category.create!(name: "Desserts")
Category.create!(name: "Snacks")
Category.create!(name: "Soups")
Category.create!(name: "Salads")
Category.create!(name: "Sandwiches")

Recipe.delete_all
Recipe.create!(name: "Cheese toastie", category_id: 1, vegetarian: true)
Recipe.create!(name: "Pasta Carbonara", category_id: 2, vegetarian: false)
Recipe.create!(name: "Cheesecake", category_id: 3, vegetarian: true)
Recipe.create!(name: "Veggie broth", category_id: 5, vegetarian: true)
Recipe.create!(name: "Peanut Butter", category_id: 7, vegetarian: true)

Ingredient.delete_all
Ingredient.create!(name: "Bread")
Ingredient.create!(name: "Pasta")
Ingredient.create!(name: "Carrot")
Ingredient.create!(name: "Bacon")
Ingredient.create!(name: "Peanut butter")
Ingredient.create!(name: "Cream cheese")
