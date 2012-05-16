Given /^the user has an item with the ([^"]*) and ([^"]*) in the (\w+) $/ do |subject, queue, body|
  user = User.create(:email => 'example@example.com')
  i = Item.new(:subject => subject, 
               :queue => queue,
               :body => body)
  i.save
  user.items << i
  user.save

end

When /^they click on the item ([^"]*) in the item list page$/ do |permalink|
  user = User.find_by_email('example@example.com')
  item = user.items.find_by_permalink(permalink)
  visit(items_path(item))
end

Then /^they will see the item ([^"]*)$/ do |body|
   page.should have_content(body)
end