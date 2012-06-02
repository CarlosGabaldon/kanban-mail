require 'date'
require 'open-uri'
require 'JSON'

# To get issues keys
# >> ...
# >> issues = feed['issues']
# >> issues[0].keys.each do |key|
# ?>   puts key
# >> end

module Github
  class Client
    class << self
      def fetch account
        uri = "http://github.com/api/v2/json/issues/list/CarlosGabaldon/fossa-old/open"
        feed = JSON.parse open(uri).read
        issues = feed['issues']
        
        issues.each do |issue|
          item = Hash.new
          item[:source] = account.account_type
          item[:sent] = issue['created_at']
          item[:from] = issue['user']
          item[:to] = issue['user']
          item[:cc] = ""
          item[:bcc] = ""
          item[:subject] = issue['title']
          item[:body] = issue['body']
      
          yield(item) if block_given?
        end
        
      end
    end
  end
end