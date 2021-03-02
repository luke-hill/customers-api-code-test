Feature: Creating a Customer on ABC system

  Connextra here if required for BA's.

  Scenario: Create a customer using valid information
    Given I have a valid request to create a customer
    When I submit the request
    Then I get a 201 response
    And the customer is created

  Scenario Outline: Create a customer using invalid information
    Given I have a valid request to create a customer
    But the "<parameter>" is "<issue>"
    When I submit the request
    Then I get a 400 response

    Examples:
      | parameter | issue     |
      | id        | invalid   |
      | id        | missing   |
      | name      | invalid   |
      | name      | too short |
      | name      | missing   |
      | email     | invalid   |
      | email     | missing   |
