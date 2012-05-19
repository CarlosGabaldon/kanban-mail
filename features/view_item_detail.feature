Feature: View item detail

  Scenario: View the details of an item
    Given the user has an item with the with the following: 
      | Permalink                           | Subject                  | Queue  | Body                                       |
      | quarter-end-sales-results-2012-05-15| Quarter end sales results| new    | This is the ending sales numbers for 2012  |
    When they click on the item permalink "quarter-end-sales-results-2012-05-15" in the item list page
    Then they will see the item body of "This is the ending sales numbers for 2012"