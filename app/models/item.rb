class Item < ActiveRecord::Base
  attr_accessible :subject, :user_id, :queue, :permalink, :body, :due_date
  belongs_to :user
  class << self
    def queues
      ['new', 'action', 'hold', 'completed']
    end
  end
end
