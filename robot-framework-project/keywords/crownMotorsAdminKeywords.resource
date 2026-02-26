*** Settings ***
Resource    ../configs/settingsAndResource.resource

*** Keywords ***
Open Browser To Admin Page
    Open Browser Session             ${ADMIN_PAGE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout             ${10_SECONDS}
    Set Selenium Implicit Wait       ${10_SECONDS}
    Sleep    5s  # Allow time for the page to load before checking elements
    Wait Until Element Is Visible    ${CROWN_MOTORS_ADMIN_LOGO}   timeout=${10_SECONDS}
    Wait Until Element Is Visible    ${WELCOME_TEXT}   timeout=${10_SECONDS}
    Wait Until Element Is Visible    ${EMAIL_ADDRESS_FIELD}   timeout=${10_SECONDS}
    Wait Until Element Is Visible    ${PASSWORD_FIELD}   timeout=${10_SECONDS}
    Wait Until Element Is Visible    ${LOGIN_BUTTON}   timeout=${10_SECONDS}
    Wait Until Element Is Visible    ${FORGOT_PASSWORD_LINK}   timeout=${10_SECONDS}   

Login With Valid Credentials
    Input Text    ${EMAIL_ADDRESS_FIELD}    ${ADMIN_EMAIL}
    Input Text    ${PASSWORD_FIELD}    ${ADMIN_PASSWORD}
    Click Element    ${LOGIN_BUTTON}

Verify Successful Login To Admin Dashboard
    Wait Until Element Is Visible    ${DASHBOARD_HEADING}   timeout=${10_SECONDS}
    Wait Until Element Is Visible    ${ADMIN_PROFILE_ICON}   timeout=${10_SECONDS}