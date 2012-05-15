#Feature: View items

#  Scenario Outline: View a list of items
#    Given the user has an item with the <Subject> in the <Queue>
#    When they vist the item list page
#    Then they should see the following item <Subject> in the <Queue>
    
#    Examples: New Items
#      | Subject                                                  | Queue     |
#      | Quarter end sales results                                | new       |
#      | Team weekly status report                                | new       |
      
#    Examples: Action Items
#      | Subject                                                  | Queue     |
#      | ACTION: Top Sales Figures                                | action    |
#      | ACTION: Meeting with Clients                             | action    |
      
#    Examples: Hold Items
#      | Subject                                                  | Queue     |
#      | HOLD: Employee Reviews                                   | hold      |
#      | HOLD: 2013 OSCON Details                                 | hold      |
      
#    Examples: Completed Items
#      | Subject                                                  | Queue     |
#      | Large Deposit into Wells Fargo - COMPLETE ADVANTAGE(RM)  | completed |
#      | Hacker Monthly Digital Subscription: Issue 24 - May 2013 | completed |