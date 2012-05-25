Feature: Get items 
  Scenario: Get items from email
    Given the user has an email account
    When they select on the get items menu
    Then they will see a list of items in the NEW queue
    
