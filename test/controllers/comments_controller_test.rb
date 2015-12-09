require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

	test "create comment" do
		user = FactoryGirl.create(:user)
		sign_in user
		place = FactoryGirl.create(:place)

		#assert_difference 'Comment.count' do
			post :create, :place_id => place.id, :comment => {
				:message => "This is a message.",
				:rating => '1_star'
				}
		#end
		#assert_equal 1, user.comments.count
		assert_redirected_to place_path(place)
	end
end
