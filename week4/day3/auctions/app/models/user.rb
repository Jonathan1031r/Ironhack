class User < ApplicationRecord
	has_many :products

	validate :name, presence: true
	validate :emil, presence: true, uniqueness: true
end
