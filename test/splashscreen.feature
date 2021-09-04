Feature: Test splashscreen and onboarding feature
Description: The purpose of this feature is to test the splashscreen and onboarding screen 
Objective: As a user, I should be able to access the Covid-19 app
            So that I can see the Splashscreen and onboarding screen

# Acceptance Criteria 
# /* put here */

# Background: User installs Covid-19 App [use the background if add the negative test case]
#     Given Launch App

@tag @happy
Scenario: Verify splash screen and onboarding on fresh installation
	Given I do fresh install covid-19 app 
    When I open covid-19 App
    Then I should be able to see splash screen
    And I redirected to first onboarding screen
    When I clicks the next button on the first onboarding screen
    Then the onboarding next screen is displayed
    When I clicks the second next button on the onboarding screen
    Then the onboarding next screen is displayed
    When I click the get started button on the onboarding screen
    Then I see the welcome back screen 