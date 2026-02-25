*** Settings ***
Resource    ../configs/settingsAndResource.resource

*** Keywords ***
Open Browser To Admin Page
    Open Browser To URL             ${ADMIN_PAGE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout            ${10_SECONDS}
    Wait Until Element Is Visible   ${CROWN_MOTORS_ADMIN_LOGO}   timeout=${10_SECONDS}    