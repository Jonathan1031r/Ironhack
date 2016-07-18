# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tomatoe= Ingredient.create(name:"tomatoe", calories:50)
lettuce= Ingredient.create(name:"lettuce", calories:60)
onion= Ingredient.create(name:"onion", calories:20)
ketchup= Ingredient.create(name:"ketchup", calories:15)
chicken= Ingredient.create(name:"chicken", calories:100)
beef= Ingredient.create(name:"beef", calories:150)
meatball= Ingredient.create(name:"meatball", calories:120)

meatball_sub = Sandwich.create(name:"meetball sub", bread_type:"white" )
burger = Sandwich.create(name:"burger",bread_type:"multigrain")
chicken_sub = Sandwich.create(name:"chicken sub", bread_type:"white")

SandwichIngredient.create(sandwich_id: meatball_sub.id, ingredient_id: meatball.id )
SandwichIngredient.create(sandwich_id: meatball_sub.id, ingredient_id: onion.id )
SandwichIngredient.create(sandwich_id: meatball_sub.id, ingredient_id: tomatoe.id )

SandwichIngredient.create(sandwich_id: burger.id, ingredient_id: beef.id)
SandwichIngredient.create(sandwich_id: burger.id, ingredient_id: lettuce.id)
SandwichIngredient.create(sandwich_id: burger.id, ingredient_id: ketchup.id)
SandwichIngredient.create(sandwich_id: burger.id, ingredient_id: onion.id )

SandwichIngredient.create(sandwich_id: chicken_sub.id, ingredient_id: chicken.id)
SandwichIngredient.create(sandwich_id: chicken_sub.id, ingredient_id: tomatoe.id)
SandwichIngredient.create(sandwich_id: chicken_sub.id, ingredient_id: lettuce.id)