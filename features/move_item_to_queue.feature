Feature: Move item to queue
  Scenario: Move a new item to action queue
    Given the user has an item with the with the following:
     | Permalink                  | Subject                     | Queue | Body                                       |
     | customer-serivce-at-timbuk2| Customer Serivce at Timbuk2 | new   | Your coupon code |
    When they click on the item permalink "customer-serivce-at-timbuk2" in the item list page
    And they choose "Action" from the drop down list
    And they click the "Move" button
    Then the item "Customer Service at Timbuk2" should be moved to the "action" queue