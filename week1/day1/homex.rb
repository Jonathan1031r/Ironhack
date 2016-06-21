class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

def print_homes(home_array)
	home_array.each do |the_home|
		puts "#{the_home.name}: #{the_home.city}: #{the_home.capacity}"
end		


homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("John place", "New York", 3, 50),
  Home.new("Gabriel's place", "Louieville", 6, 70),
  Home.new("Nick's place", "Phillie", 9, 80),
  Home.new("JoJo's place", "Rio", 2, 30),
  Home.new("Jonathan's place", "Miami Beach", 4, 100)
]


input = nil

while input != "exit"
	put "/nType [list], [price], [capacity] for different sortings."
	put "whats your seletion?"
	
	input = gets.chomp



	if input == "list"

		homes_by_price = homes.sort_by{|the_home| the_home.price}
		print_homes(homes_by_price)

	elsif input == "price"
		highest_to_lowest = homes.sort {|home_a, home_b| home_b.price <=> home_a.price}
		print_homes(highest_to_lowest)

	elsif input == "capacity"
		homes_by_capacity = homes.sort_by{|the_home| the_home.capacity}
		print_homes(homes_by_capacity)

	else
		puts "Error"	
	end		

end	

