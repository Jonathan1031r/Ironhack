# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user1 = User.new(name:"Gabriel", email: "gab@gmail.com")
user2 = User.new(name:"Jojo", email: "jojo@aol.com")


productA = Product.new(Title: "VCR", descripton: "Retro old school", deadline: 2016, 07, 20, user_id: productA.id)
productB = Product.new(Title: "DVD", descripton: "New tech", deadline: 2016, 07, 09, user_id: productB.id)






