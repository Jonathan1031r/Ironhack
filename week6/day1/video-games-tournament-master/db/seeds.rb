# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

player1 = Player.create(name: "Goonja34")
player2 = Player.create(name: "YoungLad")
player3 = Player.create(name: "Master")
player4 = Player.create(name: "Unicorn")

challenge1 = Tournament.create(name: "DragonBall_Z")
challenge2 = Tournament.create(name: "UFC")
challenge3 = Tournament.create(name: "Pokemon Tournament")
challenge4 = Tournament.create(name: "Hack Night")

Registration.create(player_id: player1.id, tournament_id: challenge1.id)
Registration.create(player_id: player2.id, tournament_id: challenge1.id)
Registration.create(player_id: player3.id, tournament_id: challenge1.id)
Registration.create(player_id: player4.id, tournament_id: challenge1.id)

Registration.create(player_id: player1.id, tournament_id: challenge2.id)
Registration.create(player_id: player2.id, tournament_id: challenge2.id)
Registration.create(player_id: player3.id, tournament_id: challenge2.id)
Registration.create(player_id: player4.id, tournament_id: challenge2.id)

Registration.create(player_id: player1.id, tournament_id: challenge3.id)
Registration.create(player_id: player2.id, tournament_id: challenge3.id)
Registration.create(player_id: player3.id, tournament_id: challenge3.id)
Registration.create(player_id: player4.id, tournament_id: challenge3.id)

Registration.create(player_id: player1.id, tournament_id: challenge4.id)
Registration.create(player_id: player2.id, tournament_id: challenge4.id)
Registration.create(player_id: player3.id, tournament_id: challenge4.id)
Registration.create(player_id: player4.id, tournament_id: challenge4.id)
