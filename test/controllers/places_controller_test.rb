require 'test_helper'

class PlacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get places_index_url
    assert_response :success
  end

  test "should get categories" do
    get '/categories'
    assert_response :success
  end
end
