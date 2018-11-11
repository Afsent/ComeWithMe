class Place < ApplicationRecord
	belongs_to :user
	belongs_to :category
	validates_presence_of :address, :latitude, :longitude
	geocoded_by :address, :lookup => :yandex
	after_validation :geocode
	acts_as_commentable
end
