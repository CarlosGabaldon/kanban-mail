Feature: Get items
  In order to manage items a user should be able
  get items from various data sources such
  as email (Gmail), to do lists (Backpack), 
  and issue tracking systems (GitHub)
     
  Scenario: Get new items from email
    Given the user has a gmail account
    When they visit the index page
    Then they will see a list of items in the NEW queue
    
  Scenario: Get new items from GitHub issues
    Given the user has a github account
    When they visit the index page
    Then they will see a list of items in the NEW queue
    
   #http://develop.github.com/p/issues.html