# Please note this is NOT the best way to write Cucumber as it should not be technical and should focus on business value
  # However, this is only being used to demonstrate Automation practice excercises
Feature: Login to portal

  Scenario: Login and logout
    When I open automationpractice website
    And I login with username "demo@prestashop.com" and password "prestashop_demo"
    Then I verify that I successfully logged in by logging out

  Scenario: Login and logout using data from yml
    When I open automationpractice website
    And I login using data from yml
    Then I verify that I successfully logged in by logging out

  Scenario: Login and click summer dresses
    When I open automationpractice website
    And I login using data from yml
    Then I hover on women menu item and click summer dresses

  Scenario: Click summer dress and add one to cart
    When I open automationpractice website
    And I login using data from yml
    And I hover on women menu item and click summer dresses
    Then I add a summer dress to cart

  Scenario: Add to cart and verify summary
    When I open automationpractice website
    And I login using data from yml
    And I hover on women menu item and click summer dresses
    And I add a summer dress to cart
    Then verify the item and price

  Scenario: Verify summary and verify address
    When I open automationpractice website
    And I login using data from yml
    And I hover on women menu item and click summer dresses
    And I add a summer dress to cart
    And verify the item and price
    Then I verify the address and proceed

  Scenario: Verify address and verify shipping address
    When I open automationpractice website
    And I login using data from yml
    And I hover on women menu item and click summer dresses
    And I add a summer dress to cart
    And verify the item and price
    And I verify the address and proceed
    Then I verify shipping address and proceed

  Scenario: Verify shipping address and pay by check
    When I open automationpractice website
    And I login using data from yml
    And I hover on women menu item and click summer dresses
    And I add a summer dress to cart
    And verify the item and price
    And I verify the address and proceed
    And I verify shipping address and proceed
    Then I select payment method

  Scenario: Pay by check and confirm order
    When I open automationpractice website
    And I login using data from yml
    And I hover on women menu item and click summer dresses
    And I add a summer dress to cart
    And verify the item and price
    And I verify the address and proceed
    And I verify shipping address and proceed
    And I select payment method
    Then I confirm the order

  Scenario: Confirm order and verify success message
    When I open automationpractice website
    And I login using data from yml
    And I hover on women menu item and click summer dresses
    And I add a summer dress to cart
    And verify the item and price
    And I verify the address and proceed
    And I verify shipping address and proceed
    And I select payment method
    And I confirm the order
    Then I verify successful purchase