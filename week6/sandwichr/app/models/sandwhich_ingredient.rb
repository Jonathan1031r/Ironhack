class SandwhichIngredient < ApplicationRecord
	belongs_to :sandwich
	belongs_to :ingredient
end
