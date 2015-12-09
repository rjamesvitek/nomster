FactoryGirl.define do
	factory :user do
		sequence :email do |n|
			"rjvitek#{n}@hotmail.com"
		end
		password "fakst123"
		password_confirmation "fakst123"
	end

	factory :place do
		name "Fake Cafe"
		address "123 Fake Street, Crystal Lake, IL 60014"
		description "Cajun Food"
		association :user
	end

	factory :comment do
		message "This is a message."
		rating "1_star"
		association :user
		association :place
	end

end