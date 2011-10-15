Feature: User authentication
  To be able to relate my answers to my account
  As a user
  I can authenticate
  
  Scenario: Login
    Given that I am at login page
    And user "john@example.com" with password "123123" exists
    When I login with "john@example.com" and with password "123123"
    Then I am logged in
    And I am at dashboard page
    
  Scenario: Logout
  Scenario: Create account
  Scenario: Edit account
  Scenario: Destroy account
    