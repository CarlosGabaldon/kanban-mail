When /^they choose "([^"]*)" from the drop down list$/ do |queue|
  select(queue, :from => 'item_queue')
end

When /^they choose due on "([^"]*)" from the drop down list$/ do |due_date|
  select_date(due_date, :from => 'item_due_date')
end

When /^they click the "([^"]*)" button$/ do |name|
  click_button(name)
end

Then /^they should be redirected to the item list page to see item moved to action queue$/ do
  item = @user.items.find_by_permalink('amazon_com-12-05-04')
  page.should have_content(item.subject)
end

Then /^they should be redirected to the item list page to see the item moved to the done queue with today's date$/ do
  Item.instance_eval {@date_class = QueryHelpers::MockDate}
  item = @user.items.find_by_permalink('amazon_com-12-05-04')
  content = "Completed on #{QueryHelpers::MockDate.today.to_s}"
  page.should have_content(content)
end