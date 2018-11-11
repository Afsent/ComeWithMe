require 'test_helper'

class PlacesControllerTest < ActionDispatch::IntegrationTest
	fixtures :users

  test "can not sign in" do
  	get new_user_session_path
  	assert_response :success
  	get new_user_session_path, params: { login: 'test_login', password_digest: 'asfafaf' }
  	assert_equal new_user_session_path, path
  end

end