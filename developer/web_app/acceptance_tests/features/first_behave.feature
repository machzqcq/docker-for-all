Feature: My first behave feature

  Scenario: Add two numbers
    Given I have two integers a and b
    When I add the numbers
    Then I print the addition result

  @api
  Scenario: Verify api returns 200
    Given I call root end point
    Then I verify successful response
  @ui
  Scenario: Verify home page loads correctly
    Given I open the home page
    Then I verify the title and body are what I expect