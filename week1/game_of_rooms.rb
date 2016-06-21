class Room
	attr_accessor(:direction, :room)

	def initialize(direction, room)
		@direction = direction
		@room = []
	end	

	def print 
		puts ""

		@room.each{ |map| map.print }
	end
end	

class Game

	def add_story(map)
		@room.push(map)
	end
end




room_1.add_story = Rooms.new("", "Welcome to another day in sunny south Florida, Miami. As you wake up /n
to go grab your cup of joe, you notice this isn't your house. You begin to /n
remember you have been KIPNAPED!!! OOO NOOOOO! Don't freak out! Your /n
kipnappers are not in your current room. You have an oppertunity to escape, /n
this is your chance. Their are no windows only two doors: the door to your /n
EAST has no door knob but you feel air flowing through the hole. The second /n
door to your SOUTH is covered in blood. Which do you choose....")

room_2.add_story = Rooms.new("east", "The rooms seem to have no windows, that sucks. But guess what! /n
more doors! The door SOUTH of you has a small window, seems clear but you never /n
know. The door to your EAST you can smell something cooking. Which do you choose...")

room_3.add_story = Rooms.new("south", "This room has no lighting but can see some light coming from /n
three doors EAST, SOUTH, WEST. Which will you choose...")	

room_4.add_story = Rooms.new("south", "Wow what a crazy day! But don't lose hope we're alomost /n
out of here. This room seems familiar no windows two doors the first one on the east side /n	
is made out of metal and the second door to your west seems to be ajar. Which would you /n
choose...")

room_5.add_story = Rooms.new("east", "Congrats you've finally made it out")

map = [room_1, room_2, room_3, room_4, room_5]
	
