# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	sequence(:email) { |n| "abc#{n}@example.com"}
  factory :user do
    name "John"
    email 
  end
end
