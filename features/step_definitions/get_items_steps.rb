Given /^the user has a gmail account$/ do
  @user = User.create email: 'example@example.com' 
  
  account = Account.create account_type:  'gmail',
                           user_name:     'cgabaldon',
                           password:      ''
  @user.accounts << account
  @user.save
end

Given /^the user has a github account$/ do
  @user = User.create email: 'example@example.com' 
  
  account = Account.create account_type: 'github',
                           user_name:    'carlosgabaldon',
                           password:     ''
  @user.accounts << account
  @user.save
                           
end

When /^they select get items from the menu$/ do
  visit(load_items_path)
end

Then /^they will see a list of items in the NEW queue$/ do
  # revisit this approach for determing if we have new emails..
  page.find('#new_item_count').value.to_i.should be > 0
  #puts page.html
  #pending
end