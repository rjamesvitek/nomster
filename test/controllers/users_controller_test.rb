require 'test_helper'

class UsersControllerTest < ActionController::TestCase
	test "user show" do
		user = FactoryGirl.create(:user)
		#user = User.create(:email => 'rjvitek@hotmail.com', :password => 'fakst123', :password_confirmation => 'fakst123')
		sign_in user
		get :show, :id => user.id
		assert_response :success
	end

end