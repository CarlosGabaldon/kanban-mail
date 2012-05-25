Feature: Move item to queue
  Scenario: Move a new item to action queue
    Given the user has an item 
    When they vist the item list page
    When they select the item on the item list page
    And they choose "ACTION" from the drop down list
    And they choose due on "2012-06-15" from the drop down list
    And they click the "Move" button
    Then they should be redirected to the item list page to see item moved to action queue
    