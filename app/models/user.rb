class User < ActiveRecord::Base
  attr_accessible :email
  has_many :items
  has_many :accounts
end
