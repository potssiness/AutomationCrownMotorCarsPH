*** Settings ***
Resource   ../configs/settingsAndResource.robot

*** Keywords ***
Open Browser To customer Landing Page
    Open Browser To URL             ${CUSTOMER_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout            ${10_SECONDS}
    Wait Until Element Is Visible   ${CROWN_MOTORS_LOGO}    timeout=${10_SECONDS}