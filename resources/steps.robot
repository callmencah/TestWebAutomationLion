*** Settings ***
Library    SeleniumLibrary
Variables   variable.py
*** Keywords ***
the user on the homepage saucedemo
     Open Browser  ${url_saucedemo}  chrome
     Maximize Browser Window
the user login with valid account
    Input Text    id=user-name    standard_user
    Input Text    id=password    secret_sauce
    Click Button  name=login-button
the user successfully login and is on the inventory page
    Page Should Contain Element    id=inventory_container
the user click the add to cart button on the Sauce Labs Backpack
    Click Button    id=add-to-cart-sauce-labs-backpack
the user click icon shooping cart
    Wait Until Page Contains Element    id=shopping_cart_container  timeout=5s
    Click Element    id=shopping_cart_container

the user click button checkout
    Wait Until Page Contains Element    id=checkout  timeout=5s
    Click Button    id=checkout
the user fill checkout Information data and click button continue
    Input Text    id=first-name    fieldfirstname
    Input Text    id=last-name    fieldlastname
    Input Text    id=postal-code    fieldzip
    Click Button    id=continue
the user is on the checkout overview page and click the button finish
    Page Should Contain Element    id=checkout_summary_container
    Click Button     id=finish
the user is see message thank you for your order
    Page Should Contain Element    id=checkout_complete_container
    Close Browser