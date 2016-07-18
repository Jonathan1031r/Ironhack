class Ingredient < ApplicationRecord
	has_many :sandwichs, through: "sandwichingredients"
	has_many :sandwichingredients
end
