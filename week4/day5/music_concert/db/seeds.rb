# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

concert1 = Concert.create(artist: "JayZ", venue: "AAA", city: "Miami", date: Time.now + 3.weeks, price: 90, description: "Live! One night only See JayZ!")
concert2 = Concert.create(artist: "T.I.", venue: "Caesar Palace", city: "Las Vegas", date: Time.now + 4.weeks, price: 89, description: "Live! One night only see T.I.!")
concert3 = Concert.create(artist: "J. Cole", venue: "Madison Square Garden", city: "New York", date: Time.now + 1.weeks, price: 56, description: "Live! One night only see J. Cole!")
concert4 = Concert.create(artist: "SchoolBoy Q", venue: "Hollywood Bowl", city: "Los Angeles", date: Time.now + 1.months, price: 120, description: "Live! One night only see SchoolBoyQ!")
concert5 = Concert.create(artist: "Kanye West", venue: "Schubas", city: "Chicago", date: Time.now + 9.days, price: 78, description: "Live! One night only Kanye West!")
concert6 = Concert.create(artist: "Rich Gang", venue: "AAA", city: "Miami", date: Time.now + 5.weeks, price: 99, description: "Live! One night only Rich Gang!")


