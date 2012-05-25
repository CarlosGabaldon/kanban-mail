require 'gmail/client'

class Item < ActiveRecord::Base
  attr_accessible :subject, :user_id, :queue, 
                  :permalink, :body, :due_date,
                  :sent, :from, :to, :cc, :bcc
  belongs_to :user
  class << self
    def queues
      ['NEW', 'ACTION', 'HOLD', 'DONE']
    end
    
    def load_sources klass = ::Gmail::Client
      account = {user_name: 'cgabaldon',
                 password: ''}
      klass.fetch account do |mail|
        
        create_params = {
          :subject      => mail[:subject],
          :user_id      => User.find(User.first).id,
          :queue        => 'NEW',
          :permalink    => nil,
          :body         => mail[:body],
          :due_date     => nil,
          :sent         => mail[:sent],
          :from         => mail[:from],
          :to           => mail[:to],
          :cc           => mail[:cc],
          :bcc          => mail[:bcc]
        }
        create create_params
        
      end
    end
    
  end
end
