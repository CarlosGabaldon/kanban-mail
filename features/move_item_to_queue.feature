Feature: Move item to queue
  Scenario: Move a new item to action queue
    Given the user has an item with the with the following:
     | Permalink                  | Subject                     | Queue | Body             |
     | customer-serivce-at-timbuk2| Customer Serivce at Timbuk2 | new   | Your coupon code |
    When they click on the item permalink "customer-serivce-at-timbuk2" in the item list page
    And they choose "action" from the drop down list
    And they click the "Move" button
    Then they should be redirected to the item list page and see "action:Customer Serivce at Timbuk2" moved to the action queue