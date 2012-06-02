require 'date'
Given /^the user has an item$/ do
  @user = User.create(:email => 'example@example.com')
  i = Item.new :permalink => 'amazon_com-12-05-04',
               :source => 'gmail',
               :subject => 'Amazon.com', 
               :queue => 'NEW',
               :body => 'Welcome to Amazon.com',
               :sent => Date.today,
               :from => 'Amazon.com <digital-no-reply@amazon.com>',
               :to => 'boss@yellowshovel.com',
               :cc => '',
               :bcc => ''
  i.save
  @user.items << i
  @user.save

end

When /^they vist the item list page$/ do 
  visit(items_path)
end


When /^they select the item on the item list page$/ do
  item = @user.items.find_by_permalink('amazon_com-12-05-04')
  visit(item_path(item))
end


Then /^they will see the item details$/ do
  item = @user.items.find_by_permalink('amazon_com-12-05-04')
  page.should have_content(item.body)
end


Then /^they will see the item$/ do 
  item = @user.items.find_by_permalink('amazon_com-12-05-04')
  page.should have_content(item.subject)
end
