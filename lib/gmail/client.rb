require 'mail'
require 'openssl'

# klass = ::Gmail::Client
# klass.fetch user_name: 'cgabaldon',
#             password: 'password' do |mail|
#               puts mail[:subject]
#             end
module Gmail
  class Client
    class << self
      def fetch account
        Mail.defaults do
          retriever_method :imap, 
                           :address    => 'imap.gmail.com',
                           :port       => 993,
                           :user_name  => "#{account[:user_name]}@gmail.com",
                           :password   => account[:password],
                           :enable_ssl => true
        end

        recent_mail = Mail.find :what       => :last, 
                                :keys       => ["ALL", "UNSEEN"], 
                                :ready_only => true, 
                                :count      => 9999, 
                                :order      => :desc

        recent_mail.each do |mail|
          item = Hash.new
          item[:source] = account.account_type
          item[:sent] = mail.date 
          item[:from] = (mail.from || []).join(',')
          item[:to] = (mail.to || []).join(',') 
          item[:cc] = (mail.cc || []).join(',')
          item[:bcc] = (mail.bcc || []).join(',')
          item[:subject] = mail.subject.to_s
          item[:body] = mail.body.to_s.force_encoding('UTF-8')
        
          yield(item) if block_given?
        
        end
      
      end
    end
  end
end