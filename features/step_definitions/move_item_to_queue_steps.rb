When /^they choose "([^"]*)" from the drop down list$/ do |queue|
  select(queue, :from => 'item_queue')
end

When /^they choose due on "([^"]*)" from the drop down list$/ do |due_date|
  select_date(due_date, :from => 'item_due_date')
end

When /^they click the "([^"]*)" button$/ do |name|
  click_button(name)
end

Then /^they should be redirected to the item list page and see "([^"]*)" moved to the action queue$/ do |item|
  page.should have_content(item)
end

