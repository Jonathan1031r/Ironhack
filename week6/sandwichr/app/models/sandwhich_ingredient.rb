class SandwhichIngredient < ApplicationRecord
	belongs_to :sandwhich
	belongs_to :ingredient
end
