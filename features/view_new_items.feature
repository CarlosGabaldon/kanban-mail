Feature: View new items
  Scenario: View a list of new items
    Given the user has the new items:
      | Quarter end sales results | new |
      | Team weekly status report | new |
    When they vist the item list page
    Then they should see the following item subjects:
      | Quarter end sales results | new |
      | Team weekly status report | new |