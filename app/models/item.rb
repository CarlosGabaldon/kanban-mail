class Item < ActiveRecord::Base
  attr_accessible :subject, :user_id
  belongs_to :user
end
