FactoryGirl.define do
	factory :user do
		sequence :email do |n|
			"rjvitek#{n}@hotmail.com"
		end
		password "fakst123"
		password_confirmation "fakst123"
	end


end