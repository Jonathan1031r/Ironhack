class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

info = homes.each do |mo_info| 
	puts "#{mo_info.name}'s in #{mo_info.city} Price: $#{mo_info.price} a night"
end	

#prices = homes.map do |x| 
#	x.price
#end

#average = prices.inject do |a, b|
#	((a + b) / 5)
#end

average = homes.reduce(0.0) do |sum, hm|
	sum + hm.price
end		
puts "Average price: #{average}"





