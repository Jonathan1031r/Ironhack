class Sandwich < ApplicationRecord
	has_many :ingredients, through: "sandwich_ingredient"
	has_many :sandwichingredients
end
