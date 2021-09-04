Feature: Test notification feature
Description: The purpose of this feature is to test the notification 
Objective: As a user, I should be able to access notification screen 
            So that I can see the list of notification

# Acceptance Criteria 
# /* put here */

# Background: User installs Covid-19 App [use the background if add the negative test case]
#     Given Launch App

@tag @happy
Scenario: As a user, I should be able to view the notification screen
	Given I am on the home screen 
    When I tap on the icon of notification
    Then I should be shows the notification screen 