require 'test_helper'

class PlaceTest < ActiveSupport::TestCase

	test "should not save empty place" do
		place = Place.new
		assert_not place.save
	end
	
end
