Feature: User authentication
  To be able to relate my answers to my account
  As a user
  I can authenticate
  
  Background:
    Given user "john@example.com" with password "123123" exists
  
  Scenario: Login
    Given that I am at login page
    When I login with "john@example.com" and with password "123123"
    Then I am logged in
    And I am at dashboard page
  
  Scenario: Logout
    Given that I am logged in as "john@example.com" with password "123123"
    When I click "Logout"
    Then I logged out
    
    
  Scenario: Create account
    Given that I'm at create account page
    When I fill in the form and submit:
      | email            | password | password_confirmation |
      | mary@example.com | 123123   | 123123                |
    Then I have an account
  
  Scenario: Edit account
    Given that I already have an account
    And I'm logged in
    And I'm on the editing page
    When I change any information
    Then MY information is different
  
  Scenario: Destroy account
    