class Room
	attr_accessor(:direction, :story)

	def initialize(direction, story)
		@direction = direction
		@story = []
	end	

	def print 
		@story.each{ |map| puts map }
	end
end	

class Game

	def add_story(map)
		@story.push(map)
	end

	def moving
		opener = 0
		while opener == 5
			puts @story[0]
		opener += 1	
		end
	end
end



new_story = Game.new

room_0 = Rooms.new("", "Welcome to another day in sunny south Florida, Miami. As you wake up \n
to go grab your cup of joe, you notice this isn't your house. You begin to \n
remember you have been KIPNAPED!!! OOO NOOOOO! Don't freak out! Your \n
kipnappers are not in your current room. You have an oppertunity to escape, \n
this is your chance. Their are no windows only two doors: the door to your \n
'EAST' has no door knob but you feel air flowing through the hole. The second \n
door to your 'SOUTH' is covered in blood. Which do you choose....")

room_1 = Rooms.new("east", "The rooms seem to have no windows, that sucks. But guess what! \n
more doors! The door 'SOUTH' of you has a small window, seems clear but you never \n
know. The door to your 'EAST' you can smell something cooking. Which do you choose...")

room_2 = Rooms.new("south", "This room has no lighting but can see some light coming from \n
three doors 'EAST', 'SOUTH', 'WEST'. Which will you choose...")	

room_3 = Rooms.new("south", "Wow what a crazy day! But don't lose hope we're alomost \n
out of here. This room seems familiar no windows two doors the first one on the 'EAST' side \n	
is made out of metal and the second door to your 'WEST' seems to be ajar. Which would you \n
choose...")

room_4 = Rooms.new("east", "Congrats you've finally made it out!")

map = [room_0, room_1, room_2, room_3, room_4]

