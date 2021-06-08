Feature: Test Reqres GET HTTP Request

  Scenario: Send GET HTTP Request
    Given I set the params and headers for Get User Details
    When  I send GET HTTP requests for User
    Then  I should get the user details in the body
