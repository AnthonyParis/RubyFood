# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dish.delete_all
Restaurant.delete_all

sushi = Restaurant.new(name: "Sushi World", address: "12 Rue du Japon", rate: 4.5, user_id: 1)
sushi.save

sushi.dish.create(name: "Makis Saumon", price: 5.0)
sushi.dish.create(name: "Makis Fromage", price: 4.5)
sushi.dish.create(name: "Makis Avocat", price: 4.5)

pizza = Restaurant.new(name: "Super Pizza", address: "12 Rue du Fromage", rate: 4.0, user_id: 1)
pizza.save

pizza.dish.create(name: "Pizza Royale", price: 12.0)
pizza.dish.create(name: "Pizza Fromage", price: 10.0)
pizza.dish.create(name: "Pizza Légumes", price: 8.0)


burger = Restaurant.new(name: "Little Burger", address: "27 Rue de la Légion d'Honneur, 75019 Paris", rate: 4.0, user_id: 1)
burger.save

burger.dish.create(name: "Burger", price: 8.9)
burger.dish.create(name: "K'SDAL GRILLÉ", price: 6.6)