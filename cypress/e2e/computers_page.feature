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
