Feature: Test sign up feature
Description: The purpose of this feature is to test the sign up feature
Objective: As a user, I should be able to sign up on the Covid-19 app
            So that I can access the covid-19 app

# Acceptance Criteria 
# /* put here */

Background: User installs Covid-19 App
    Given Launch App

@tag @happy
Scenario: As a new user, I should be able to sign up on the covid-19 app
	Given I am on the sign up screen 
    When I type the valid first name 
    And I type the valid last name 
    And I type the valid mobile number
    And I type the valid password
    And I re-type the valid password
    And I tap the sign up button
    Then I should be direct to otp verification screen 
    And I type the valid OTP on the otp verification screen 
    And I tap the continue button
    Then I should be direct to congratulations popup screen 
    And I tap the continue to home button
    Then I should be direct to home screen

@tag @neg
Scenario: As a new user, I should not be able to sign up on the covid-19 app with invalid mobile number [use alphabet]
    Given I am on the sign up screen 
    When I type the valid first name 
    And I type the valid last name 
    And I type the invalid mobile number
    And I type the valid password
    And I re-type the valid password
    And I tap the sign up button
    Then I should be see the "error message handling"

@tag @neg
Scenario: As a new user, I should not be able to sign up on the covid-19 app when not fill in the required fields
    Given I am on the sign up screen 
    When I don't type the valid first name 
    And I don't type the valid last name 
    And I don't type the valid mobile number
    And I don't type the valid password
    And I don't re-type the valid password
    And I tap the sign up button
    Then I should be see the "error message handling"

@tag @neg
Scenario: As a new user, I should not be able to sign up on the covid-19 app when type the first name smaller than 2 characters
    Given I am on the sign up screen 
    When I type the invalid first name "smaller than 2 characters"
    And I type the valid last name 
    And I type the valid mobile number
    And I type the valid password
    And I re-type the valid password
    And I tap the sign up button
    Then I should be see the "error message handling"

@tag @neg
Scenario: As a new user, I should not be able to sign up on the covid-19 app when type the first name greater than 15 characters
    Given I am on the sign up screen 
    When I type the invalid first name "greater than 15 characters"
    And I type the valid last name 
    And I type the valid mobile number
    And I type the valid password
    And I re-type the valid password
    And I tap the sign up button
    Then I should be see the "error message handling"

@tag @neg
Scenario: As a new user, I should not be able to sign up on the covid-19 app when type the last name smaller than 2 characters
    Given I am on the sign up screen 
    When I type the valid first name 
    And I type the invalid last name "smaller than 2 characters"
    And I type the valid mobile number
    And I type the valid password
    And I re-type the valid password
    And I tap the sign up button
    Then I should be see the "error message handling"

@tag @neg
Scenario: As a new user, I should not be able to sign up on the covid-19 app when type the last name greater than 15 characters
    Given I am on the sign up screen 
    When I type the valid first name 
    And I type the invalid last name "greater than 15 characters"
    And I type the valid mobile number
    And I type the valid password
    And I re-type the valid password
    And I tap the sign up button
    Then I should be see the "error message handling"

@tag @neg
Scenario: As a new user, I should not be able to sign up on the covid-19 app when type the all field using special character [#@%^%#$@#$@#]
    Given I am on the sign up screen 
    When I type the invalid first name 
    And I type the invalid last name 
    And I type the invalid mobile number
    And I type the invalid password
    And I re-type inthe valid password
    And I tap the sign up button
    Then I should be see the "error message handling"

@tag @neg
Scenario: As a new user, I should not be able to sign up on the covid-19 app when type password field not using password requirement 
    Given I am on the sign up screen 
    When I type the valid first name 
    And I type the valid last name 
    And I type the valid mobile number
    And I type the invalid password
    And I re-type the invalid password
    And I tap the sign up button
    Then I should be see the "error message handling"

@tag @neg
Scenario: As a new user, I should not be able to sign up on the covid-19 app when type password field with not match password
    Given I am on the sign up screen 
    When I type the valid first name 
    And I type the valid last name 
    And I type the valid mobile number
    And I type the valid password
    And I re-type the invalid password
    And I tap the sign up button
    Then I should be see the "error message handling"