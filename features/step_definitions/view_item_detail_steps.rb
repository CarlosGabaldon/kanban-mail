Given /^the user has an item with the with the following:$/ do |items|
  user = User.create(:email => 'example@example.com')
  items.raw.each do |item|
    i = Item.new(:permalink => item[0],
                 :subject => item[1], 
                 :queue => item[2],
                 :body => item[3])
    i.save
    user.items << i
    user.save
  end
end

When /^they click on the item permalink "([^"]*)" in the item list page$/ do |permalink|
  user = User.find_by_email('example@example.com')
  item = user.items.find_by_permalink(permalink)
  visit(item_path(item))
end

Then /^they will see the item body of "([^"]*)"$/ do |body|
   page.should have_content(body)
   #puts page.html
   #pending
end