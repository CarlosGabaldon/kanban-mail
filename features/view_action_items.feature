Feature: View action items
  Scenario: View a list of action items
    Given the user has the action items:
      | ACTION: Top Sales Figures    | action |
      | ACTION: Meeting with Clients | action |
    When they vist the item list page
    Then they should see the following item subjects:
      | ACTION: Top Sales Figures    | action |
      | ACTION: Meeting with Clients | action |