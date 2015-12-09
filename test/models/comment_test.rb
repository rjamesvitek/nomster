require 'test_helper'
=begin
class CommentTest < ActiveSupport::TestCase

	test "humanized_rating" do
		user = User.create(:email => 'rjvitek@hotmail.com', :password => 'fakst123', :password_confirmation => 'fakst123')
		#user = FactoryGirl.create(:user)
		place = FactoryGirl.create(:place)
		#place = Place.create(:name => 'Fake Cafe', :address => '123 Fake Street, Crystal Lake, IL 60014', :description => 'Cajun Food')
		#comment = Comment.create(:message => 'This is a message.', :rating => '1_star')
		comment = FactoryGirl.create(:comment)
		expected = 'one star'
		actual = comment.humanized_rating
		assert_equal expected, actual
		#assert_equal 1, place.comments.count
	end
	

end
=end
