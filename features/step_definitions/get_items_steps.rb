Given /^the user has an email account$/ do
  @user = User.create(:email => 'example@example.com')
  
  account = Account.create account_type:  'gmail',
                           user_name:     'cgabaldon',
                           password:      ''
  @user.accounts << account
  @user.save
end

When /^they select get new items from the menu$/ do
  visit(load_items_path)
end

Then /^they will see a list of items in the NEW queue$/ do
  puts page.html
  #pending # express the regexp above with the code you wish you had
end