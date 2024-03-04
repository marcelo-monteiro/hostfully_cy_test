Feature: Add New Computer to Database

  Background: User is on the Computers Page
    Given I am on the "https://computer-database.gatling.io/computers"
    And I click in button "buttonAddNewComputer"

  Scenario: Successfully adding a new computer
    When I enter "MacBook Pro M1" in the "inputComputerName" field
    And I enter "2021-01-01" in the "inputIntroducedDate" field
    And I enter "2024-01-01" in the "inputDiscontinuedDate" field
    And I select "Apple Inc." from the "companyDropdown" dropdown
    And I click in button "buttonCreateThisComputer"
    Then I expect to see the message "Done ! Computer MacBook Pro M1 has been created"

  Scenario: Attempting to add a new computer with invalid data in Introduced field
    When I enter "Computer" in the "inputComputerName" field
    And I enter "invalid-date" in the "inputIntroducedDate" field
    And I select "Apple Inc." from the "companyDropdown" dropdown
    And I click in button "buttonCreateThisComputer"
    Then I expect to see the message "Failed to decode date : java.time.format.DateTimeParseException: Text 'invalid-date' could not be parsed at index 0"

  Scenario: Attempting to add a new computer with invalid data in Discontinued field
    When I enter "Computer" in the "inputComputerName" field
    And I enter "invalid-date" in the "inputIntroducedDate" field
    And I select "Apple Inc." from the "companyDropdown" dropdown
    And I click in button "buttonCreateThisComputer"
    Then I expect to see the message "Failed to decode date : java.time.format.DateTimeParseException: Text 'invalid-date' could not be parsed at index 0"

  Scenario: Attempting to add a new computer with invalid data in Computer field
    When I enter " " in the "inputComputerName" field
    And I enter "2021-01-01" in the "inputIntroducedDate" field
    And I enter "2024-01-01" in the "inputDiscontinuedDate" field
    And I select "Apple Inc." from the "companyDropdown" dropdown
    And I click in button "buttonCreateThisComputer"
    Then I expect to see the message "Error Message: Invalid Name"

  Scenario: Attempting to add a new computer with empty data in all fields
    When I click in button "buttonCreateThisComputer"
    Then I expect to see the message "Failed to refine type : Predicate isEmpty() did not fail."

  Scenario: Cancelling the action to add a new computer
    When I enter "MacBook Pro M1" in the "inputComputerName" field
    And I enter "2021-01-01" in the "inputIntroducedDate" field
    And I enter "2024-01-01" in the "inputDiscontinuedDate" field
    And I select "Apple Inc." from the "companyDropdown" dropdown
    And I click in button "buttonCancel"
    Then I should return to homepage