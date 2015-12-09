require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

	test "create comment" do
		user = FactoryGirl.create(:user)
		#user = User.create(:email => 'rjvitek@hotmail.com', :password => 'fakst123', :password_confirmation => 'fakst123')
		sign_in user
		place = FactoryGirl.create(:place)
		#place = Place.create(:name => 'Fake Cafe', :address => '123 Fake Street, Crystal Lake, IL 60014', :description => 'Cajun Food')

		assert_difference 'Comment.count' do
			post :create, :place_id => place.id, :comment => {
				:message => "This is a message.",
				:rating => '1_star'
				}
		end
		assert_equal 1, user.comments.count
		assert_redirected_to place_path(place)
		#2
	end
end
=end