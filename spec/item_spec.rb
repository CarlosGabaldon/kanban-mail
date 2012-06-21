require 'spec_helper'

describe Item do
  it "should return a list of queues" do
    item_queues = ['NEW', 'ACTION', 'HOLD', 'DONE']
    item_queues.each do |queue|
      Item.queues.should include(queue)
    end
  end
  
end