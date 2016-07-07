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

TimeEntry.create(hours: 2, minutes: 25, comments: "Hello", date: Time.now, project_id: projectA.id)
TimeEntry.create(hours: 3, minutes: 4, comments: "Hello World",  date: Time.now, project_id: projectB.id)
TimeEntry.create(hours: 1, minutes: 15, comments: "Controlla control",  date: Time.now, project_id: projectC.id)
TimeEntry.create(hours: 7, minutes: 25, comments: "It goes down in the DM",  date: Time.now, project_id: projectD.id)
TimeEntry.create(hours: 3, minutes: 45, comments: "Again!",  date: Time.now, project_id: projectE.id)
TimeEntry.create(hours: 6, minutes: 52, comments: "Back to back",  date: Time.now, project_id: projectF.id)
TimeEntry.create(hours: 2, minutes: 25, comments: "In the middle",  date: Time.now, project_id: projectG.id)
TimeEntry.create(hours: 3, minutes: 45, comments: "Batman!!",  date: Time.now, project_id: projectH.id)
TimeEntry.create(hours: 1, minutes: 35, comments: "Panda panda panda, Yah!",  date: Time.now, project_id: projectI.id)
TimeEntry.create(hours: 2, minutes: 2, comments: "blah",  date: Time.now, project_id: projectJ.id)
TimeEntry.create(hours: 3, minutes: 5, comments: "whatever",  date: Time.now, project_id: projectK.id)



puts "done"