Feature: Login to portal

  Scenario: Login and logout
    When I open automationpractice website
    And I login with username "demo@prestashop.com" and password "prestashop_demo"
    Then I verify that I successfully logged in by logging out

  Scenario: Login and logout using data from yml
    When I open automationpractice website
    And I login using data from yml
    Then I verify that I successfully logged in by logging out