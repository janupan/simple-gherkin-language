Feature: Test Forget password feature
Description: The purpose of this feature is to test the forget password feature
Objective: As a user, I should be able to forget password on the Covid-19 app
            So that I can create new password

# Acceptance Criteria 
# /* put here */

Background: User installs Covid-19 App
    Given I am on the login screen

@tag @happy
Scenario: As a user, I should be able to forget password on the covid-19 app
	Given I am on the login screen 
    When I tap the forget password button 
    Then I should direct to forget password screen 
    And I type the valid mobile number
    And I tap the send code button 
    Then I should direct to otp verification screen 
    And I type the valid otp code
    And I tap on the continue button 
    Then I should direct to reset password screen
    And I type the valid new password 
    And I re-type the valid new password 
    And I tap on the reset password button 
    Then I should be see the congratulations popup screen 
    And I tap on the back home button 
    Then I should be direct to home screen 
    
@tag @neg
Scenario: As a user, I should not be able to forget password on the covid-19 app when type invalid otp code
	Given I am on the login screen 
    When I tap the forget password button 
    Then I should direct to forget password screen 
    And I type the valid mobile number
    And I tap the send code button 
    Then I should direct to otp verification screen 
    And I type the invalid otp code
    And I tap on the continue button 
    Then I should get the "error message handling"

@tag @neg
Scenario: As a user, I should not be able to forget password on the covid-19 app when type password field not using password requirement
	Given I am on the login screen 
    When I tap the forget password button 
    Then I should direct to forget password screen 
    And I type the valid mobile number
    And I tap the send code button 
    Then I should direct to otp verification screen 
    And I type the valid otp code
    And I tap on the continue button 
    Then I should direct to reset password screen
    And I type the invalid new password 
    Then I should be get the "error message handling"

@tag @neg
Scenario: As a user, I should not be able to forget password on the covid-19 app when type password field with not match password
	Given I am on the login screen 
    When I tap the forget password button 
    Then I should direct to forget password screen 
    And I type the valid mobile number
    And I tap the send code button 
    Then I should direct to otp verification screen 
    And I type the valid otp code
    And I tap on the continue button 
    Then I should direct to reset password screen
    And I type the valid new password 
    And I re-type the invalid new password "not match password"
    Then I should be get the "error message handling"