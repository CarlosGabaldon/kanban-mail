Feature: View item detail

  Scenario: View the details of an item
    Given the user has an item 
    When they select the item on the item list page
    Then they will see the item details
    
