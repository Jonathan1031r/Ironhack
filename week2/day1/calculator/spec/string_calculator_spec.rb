require_relative("../lib/string_calculator.rb")

RSpec.describe StringCalculator do
		the_calculator = StringCalculator.new
		
	it "returns 0 for empty string" do
		expect( the_calculator.add("") ).to eq(0)	
		# p the_calculator.add("") == 0
	end

	it "returns the number for a single number" do
		expect( the_calculator.add("6") ).to eq(6)
		expect( the_calculator.add("9") ).to eq(9)
		# p the_calculator.add("6") == 6
		# p the_calculator.add("9") == 9
	end

	it "returns the number added up for two numbers" do
		expect( the_calculator.add("5,7") ).to eq(12)
		expect( the_calculator.add("4,3") ).to eq(7)
		# p the_calculator.add("5,7") == 12
		# p the_calculator.add("4,3") == 7
	end
end


