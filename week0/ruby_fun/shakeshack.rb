class Shake_Shack
	def initialize
	  @list = []
	end

	def add_milkshakes(shakes)
	  @list.push(shakes)	
	end
	
	def reciepts 
		@list.each do |x|
			puts x.flavor
			puts x.price_of_milkshake
		end
	end		
end

class MilkShake
  def initialize
    @base_price = 3
    @ingredient = []
  end

  def add_ingredient(ingredient)
  	@ingredient.push(ingredient)
  end

  def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredient.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
  #return  our total price to whoever called for it
   total_price_of_milkshake
end
end

class Ingredient
  attr_reader :name, :price	
	def initialize(name, price)
    @name = name
    @price = price
    end
end

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
my_shake = Shake_Shack.new
my_shake.add_milkshakes(nizars_milkshake)

