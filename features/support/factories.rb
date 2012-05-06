require 'factory_girl'

FactoryGirl.define do

  factory :user, :class => User do |user|
    user.email "example@example.com"
  end
  
  factory :item do |item|
    item.subject 'I am item one!'
  end
  
  factory :item_with_user, :parent => :item do |item|
    item.after_create do |i|
      FactoryGirl.create(:user, :items => [i])
    end
  end
  
end