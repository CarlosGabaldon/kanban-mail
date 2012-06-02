require 'gmail/client'

class Item < ActiveRecord::Base
  attr_accessible :subject, :user_id, :queue, 
                  :permalink, :body, :due_date,
                  :sent, :from, :to, :cc, :bcc,
                  :source
  belongs_to :user
  
  def display_title
    "#{self.source.upcase}:#{self.queue}:#{self.subject}"
  end
  
  class << self
    def queues
      ['NEW', 'ACTION', 'HOLD', 'DONE']
    end
    
    def load_sources user
      
      user.accounts.each do |account|
            
        begin
          account_module = account.account_type.capitalize
          source = Kernel.const_get(account_module).const_get('Client')
        rescue
          next
        end
        
        source.fetch account do |item|

          create_params = {
            :source       => item[:source],
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
