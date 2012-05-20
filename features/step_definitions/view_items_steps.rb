Given /^the user has the (\w+) items:$/ do |queue, items|
  
  user = User.create(:email => 'example@example.com')
  
  items.raw.each do |item|
    #FactoryGirl.create(:item_with_user, :subject => item[0])
    i = Item.new(:subject => item[0], :queue => queue)
    i.save
    user.items << i
    user.save
    
  end
end

When /^they vist the item list page$/ do 
  visit(items_path)
end

Then /^they should see the following item subjects:$/ do |items|
  items.raw.flatten.each do |item|
    page.should have_content(item)
  end
end