class Account < ActiveRecord::Base
  attr_accessible :password, :account_type, :user_name
  belongs_to :user
end
