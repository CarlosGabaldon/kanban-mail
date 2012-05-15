Feature: View hold items
  Scenario: View a list of hold items
    Given the user has the hold items:
      | HOLD: Employee Reviews    | hold |
      | HOLD: 2013 OSCON Details  | hold |
    When they vist the item list page
    Then they should see the following item subjects:
      | HOLD: Employee Reviews    | hold |
      | HOLD: 2013 OSCON Details  | hold |