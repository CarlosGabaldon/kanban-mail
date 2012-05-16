Feature: View item detail

  Scenario Outline: View the details of an item
    Given the user has an item with the <Subject> and <Body> in the <Queue> 
    When they click on the item <Permalink> in the item list page
    Then they will see the item <Body>
    
    Examples: Items
      | Permalink                           | Subject                  | Queue  | Body                                       |
      | quarter-end-sales-results-2012-05-15| Quarter end sales results| new    | This is the ending sales numbers for 2012  |
      | top-sales-figures-2012-05-10        | Top Sales Figures        | action | Please review the sales numbers            |
      | oscon-details-2012-05-10            | OSCON Details            | hold   | Confirmation of your registration to OSCON |
      | hacker-monthly-issue-24-2012-05-10  | Hacker Monthly Issue 24  | action | Hacker Monthly Digital Subscription        |