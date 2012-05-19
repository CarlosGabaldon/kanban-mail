Feature: View action items
  Scenario: View a list of action items
    Given the user has the action items:
      | ACTION: Top Sales Figures    |
      | ACTION: Meeting with Clients |
    When they vist the item list page
    Then they should see the following item subjects:
      | ACTION: Top Sales Figures    |
      | ACTION: Meeting with Clients |