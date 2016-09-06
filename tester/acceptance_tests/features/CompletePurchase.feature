Feature: Add product to cart and purchase

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