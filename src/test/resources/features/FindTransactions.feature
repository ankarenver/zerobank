@find_transaction
Feature: Find Transactions in Account Activity
  @account_activity_search_date
  Scenario:	Search date range
    Given user in the login page
    When users logs in with valid credentials
    Then user should navigate to "Account Activity" page
    And user should navigate to "Find Transactions" sub-page
    When the user enters date range from "2012-09-01" to "2012-09-06"
    Then user should complete process with "Find" button
    Then results table should only show transactions dates between "2012-09-01" to "2012-09-06"
    And the results	should be sorted by	most recent	date
    When the user enters date range from "2012-09-02" to "2012-09-06"
    Then user should complete process with "Find" button
    Then results table should only show transactions dates between "2012-09-02" to "2012-09-06"
    And the results table should only not contain transactions dated "2012-09-01"

  @account_activity_search_description
  Scenario:	Search description
    Given user in the login page
    When users logs in with valid credentials
    Then user should navigate to "Account Activity" page
    Then user should navigate to "Find Transactions" sub-page
    When user should enter a Description "ONLINE"
    And user should complete process with "Find" button
    Then results table should only show descriptions containing "ONLINE"
    When user should enter a Description "OFFICE"
    And user should complete process with "Find" button
    Then results table should only show descriptions containing "OFFICE"
    But the results table should not show description containing "ONLINE"

  @account_activity_search_description_case_sensitive
  Scenario:	Search	description	case insensitive
    Given user in the login page
    When users logs in with valid credentials
    Then user should navigate to "Account Activity" page
    Then user should navigate to "Find Transactions" sub-page
    When user should enter a Description "ONLINE"
    And user should complete process with "Find" button
    Then results table should only show descriptions containing "ONLINE"
    When user should enter a Description "online"
    And user should complete process with "Find" button
    Then results table should only show descriptions containing "ONLINE"
