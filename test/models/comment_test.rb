require 'test_helper'

class CommentTest < ActiveSupport::TestCase

	test "humanized_rating" do
		user = FactoryGirl.create(:user)
		place = Place.create(:name => 'Fake Cafe', :address => '123 Fake Street, Crystal Lake, IL 60014', :description => 'Cajun Food')
		comment = Comment.create(:message => 'This is a message.', :rating => '1_star')
		expected = 'one star'
		actual = comment.humanized_rating
		assert_equal expected, actual
	end
	assert_equal 1, place.comments.count

end
