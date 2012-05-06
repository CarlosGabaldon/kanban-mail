Given /^the user has the new items:$/ do |items|
  items.raw.each do |item|
    FactoryGirl.create(:item_with_user, :subject => item)
  end
end

When /^they vist the new item list page$/ do
  visit(items_path)
end

Then /^they should see the following item subjects:$/ do |items|
   page.should have_content(items.raw)
end