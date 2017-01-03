Feature: Loan Extension

  Background: loans have been added to database

    Given the following loans exist:
      | title                             | start_date  | due_date      | times_extended  | username |
      | The Ruby way                      | 25-Oct-2016 | 25-Dec-2016   | 0               | testuser |
      | Secrets of the JavaScript Ninja   | 25-Nov-2016 | 26-Dec-2016   | 0               | testuser |

  Scenario: can view the lists page
    Given I am on the home page
    Then I should see "My book loans"

  Scenario: can view the list of books
    When I go to the home page
    Then I should see "The Ruby way"
    And I should see "Secrets of the JavaScript Ninja"