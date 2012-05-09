class Item < ActiveRecord::Base
  attr_accessible :subject, :user_id, :queue
  belongs_to :user
end
