require 'spec_helper'

describe Github::Client do
  
  before(:each) do
    @attr = { 
      account_type: 'github',
      user_name:  'carlosgabaldon',
      password: ''
    }
  end
  
  
  it "load issues for a specific repo and user" do
    sample_issues = File.read 'spec/assets/issues.json'
    klass = Class.new(Github::Client) do
      define_method(:get) do |username, repo|
        username.should =='CarlosGabaldon'
        repo.should == 'fossa-old'
        sample_issues
      end
    end
    account = Account.create!(@attr)
    
    issues = klass.fetch account
    issues.length.should be > 0
  end
  
end