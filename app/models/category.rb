class Category < ApplicationRecord
	has_many :places
	validates_uniqueness_of :name
end
