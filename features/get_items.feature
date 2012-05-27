Feature: Get items
  In order to manage items a user should be able
  get items from various data sources such
  as email (Gmail), to do lists (Backpack), 
  and issue tracking systems (GitHub)
     
  Scenario: Get new items from email
    Given the user has an email account
    When they select get new items from the menu
    Then they will see a list of items in the NEW queue
    
