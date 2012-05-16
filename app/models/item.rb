class Item < ActiveRecord::Base
  attr_accessible :subject, :user_id, :queue, :permalink, :body
  belongs_to :user
end
