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
    
    def load_sources user
      
      user.accounts.each do |account|
            
        # Each account source lib should have the same fetch interface 
        begin
          account_module = account.account_type.capitalize
          source = Kernel.const_get(account_module).const_get('Client')
        rescue
          next
        end
        
        source.fetch account do |item|

          create_params = {
            :subject      => item[:subject],
            :user_id      => user.id,
            :queue        => 'NEW',
            :permalink    => nil,
            :body         => item[:body],
            :due_date     => nil,
            :sent         => item[:sent],
            :from         => item[:from],
            :to           => item[:to],
            :cc           => item[:cc],
            :bcc          => item[:bcc]
          }
          create create_params

        end
      end
  
    end
    
  end
end
