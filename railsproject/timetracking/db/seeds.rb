# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


projectA = Project.create(name: "Ironhack", desscription: "Coding Camp")
projectB = Project.create(name: "Taco Bell", desscription: "Burrito")
projectC = Project.create(name: "Burger King")
projectD = Project.create(name: "Wendy's", desscription: "Jr Bacon Cheeseburger")
projectE = Project.create(name: "Mcdonals", desscription: "Snack Wrap")
projectF = Project.create(name: "Pollo Tropical", desscription: "Tropi-chop")
projectG = Project.create(name: "Mama's Home Meal")
projectH = Project.create(name: "Pizza Hut", desscription: "Pizza")
projectI = Project.create(name: "Papa John's", desscription: "Cinnimon Rolls")
projectJ = Project.create(name: "Domino's", desscription: "Cheesy Bread")
projectK = Project.create(name: "Coyo")


puts "done"