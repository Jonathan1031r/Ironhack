require_relative ("../lib/password_checker.rb")

RSpec.describe PasswordChecker do
	let :pass_checker do
		PasswordChecker.new("jojo@gmail.com", "J$triller34")
end

describe "#pass_length" do
	it "makes sure password is longer than 7 char" do
		expect(pass_checker.pass_length).to eq(true)
	end
	end

describe "pass_symbol" do	
	it "checks if password contains a special char" do
		expect(pass_checker.pass_symbol).to eq (true)
	end
	end

describe "pass_case" do	
	it "checks if password contains a lowercase and upcase char" do	
		expect(pass_checker.pass_case).to eq (true)
	end
	end

describe "pass_name" do 
	it "checks if domain or username are used in email" do	
		expect(pass_checker.pass_name).to eq (true)
	end
	end		
end