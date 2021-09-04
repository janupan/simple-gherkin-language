Feature: Test registration feature
Description: The purpose of this feature is to test the registration feature
Objective: As a user, I should be able to registration on the Covid-19 app
            So that I already registered

# Acceptance Criteria 
# /* put here */

Background: User installs Covid-19 App
    Given Launch App

@tag @happy
Scenario: As a user, I should be able to register on the covid-19 app
	Given I am on the home screen
    When I tap on the registration menu 
    Then I should be direct to registration screen 
    And I type the valid first name 
    And I type the valid last name 
    And I type the valid mobile number
    And I type the valid NID numbers 
    And I select the gender option 
    And I select the date of birth option
    And I type the valid address 
    And I tap the register button
    Then I should be direct to upload NID card screen 
    And I tap on the front side section
    Then I should get the option [choose from gallery]
    And I upload the nid card front side 
    And I tap on the back side section
    Then I should get the option [choose from gallery]
    And I upload the nid card back side 
    Then I should get preview nid card
    And I tap on the upload button
    Then I should be direct to select place screen 
    And I tap on the home option 
    And I tap on the confirm button 
    Then I should be direct to congratulations popup screen 

@tag @neg
Scenario: As a user, I should not be able to register on the covid-19 app with invalid mobile number [use alphabet] 
	Given I am on the home screen
    When I tap on the registration menu 
    Then I should be direct to registration screen 
    And I type the valid first name 
    And I type the valid last name 
    And I type the invalid mobile number 
    Then I should be see the "error message handling"

@tag @neg
Scenario: As a user, I should be able to register on the covid-19 app with invalid nid number
	Given I am on the home screen
    When I tap on the registration menu 
    Then I should be direct to registration screen 
    And I type the valid first name 
    And I type the valid last name 
    And I type the valid mobile number
    And I type the invalid NID numbers 
    Then I should be see the "error message handling"

@tag @neg
Scenario: As a user, I should be able to register on the covid-19 app when not fill in the required fields
	Given I am on the home screen
    When I tap on the registration menu 
    Then I should be direct to registration screen 
    And I don't type the valid first name 
    And I don't type the valid last name 
    And I don't type the valid mobile number
    And I don't type the valid NID numbers 
    And I select the gender option 
    And I select the date of birth option
    And I type the valid address 
    And I tap the register button
    Then I should be see the "error message handling"