Feature: View completed items
  Scenario: View a list of completed items
    Given the user has the completed items:
      | Large Deposit into Wells Fargo - COMPLETE ADVANTAGE(RM)  | completed |
      | Hacker Monthly Digital Subscription: Issue 24 - May 2013 | completed |
    When they vist the item list page
    Then they should see the following item subjects:
      | Large Deposit into Wells Fargo - COMPLETE ADVANTAGE(RM)  | completed |
      | Hacker Monthly Digital Subscription: Issue 24 - May 2013 | completed |