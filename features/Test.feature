Feature: Test ReqRes GET HTTP Request

  Scenario: Send GET HTTP Request
    Given I set the params and headers for Get User Details
    When  I send GET HTTP requests for User
    Then  I should get the user details in the body
    And   I should get response message as "OK"
    And   I should have response code as 200