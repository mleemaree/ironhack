# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


s1 = Sandwich.create name: "Calamari sandwich", bread_type: "Baguette"
Sandwich.create name: "Meatball sandwich", bread_type: "Baguette"
Sandwich.create name: "Sweet pork bagel", bread_type: "Bagel"



i1 = Ingredient.create name: "Calamari", calories: "100 cal"
i2 = Ingredient.create name: "Ink sauce", calories: "70 cal"
Ingredient.create name: "Meatballs", calories: "100 cal"
Ingredient.create name: "Tomato sauce", calories: "100 cal"
i3 = Ingredient.create name: "Oinon", calories: "80 cal"
Ingredient.create name: "Pumpkin", calories: "40 cal"
Ingredient.create name: "Sweet potatoe", calories: "60 cal"
Ingredient.create name: "Pulled pork", calories: "60 cal"


s1.ingredients.push(i1)
s1.ingredients.push(i2)