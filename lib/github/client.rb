require 'date'
require 'open-uri'
require 'json'

# To get issues keys
# >> ...
# >> issues = feed['issues']
# >> issues[0].keys.each do |key|
# ?>   puts key
# >> end

module Github
  class Client
    def self.fetch account
      new.fetch account
    end
    
    def fetch account
      issues = JSON.parse get 'CarlosGabaldon', 'fossa-old'
    
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
      issues
    end

    private
    
    def get username, repo
      open("https://api.github.com/repos/#{username}/#{repo}/issues").read
    end
    
  end
end