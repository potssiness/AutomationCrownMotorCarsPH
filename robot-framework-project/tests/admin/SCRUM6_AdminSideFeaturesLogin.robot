*** Settings ***
Library    SeleniumLibrary
Resource   ../../configs/settingsAndResource.resource

*** Test Cases ***
Validate Screen Elements on Admin Login Page
    [Documentation]    https://carldagangon00.atlassian.net/browse/SCRUM-6
    Open Browser To Admin Page
    Wait Until Element Is Visible    ${WELCOME_TEXT}   timeout=${10_SECONDS}
    Wait Until Element Is Visible    ${EMAIL_ADDRESS_FIELD}   timeout=${10_SECONDS}
    Wait Until Element Is Visible    ${PASSWORD_FIELD}   timeout=${10_SECONDS}
    Wait Until Element Is Visible    ${LOGIN_BUTTON}   timeout=${10_SECONDS}
    Wait Until Element Is Visible    ${FORGOT_PASSWORD_LINK}   timeout=${10_SECONDS}


Valid/invalid credential handling    
    [Documentation]    https://carldagangon00.atlassian.net/browse/SCRUM-6
    Open Browser To Admin Page
    
    [Teardown]    Close Browser