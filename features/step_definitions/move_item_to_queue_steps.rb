And /^they choose "([^"]*)" from the drop down list$/ do |queue|
  select(queue, :from => 'item_queue')
end

And /^they click the "([^"]*)" button$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^the item "([^"]*)" should be moved to the "([^"]*)" queue$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end