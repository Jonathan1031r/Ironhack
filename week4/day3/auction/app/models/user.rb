class User < ApplicationRecord
	has_many :products

	validate :name, presence: true
	validate :email, presence: true, uniqueness: true
end
