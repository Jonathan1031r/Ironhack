class Sandwich < ApplicationRecord
	has_many :ingredients, through: "sandwichingredients"
	has_many :sandwichingredients
end
