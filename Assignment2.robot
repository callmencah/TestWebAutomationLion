*** Settings ***
Library    SeleniumLibrary
Resource   resources/steps.robot

*** Test Cases ***
User journey of shopping cart checkout
    [Documentation]     This test case is a BDD-style user journey test for shopping cart checkout
    Given the user on the homepage saucedemo
    When the user login with valid account
    And the user successfully login and is on the inventory page
    And the user click the add to cart button on the Sauce Labs Backpack
    And the user click icon shooping cart
    And the user click button checkout
    And the user fill checkout Information data and click button continue
    When the user is on the checkout overview page and click the button finish
    Then the user is see message thank you for your order