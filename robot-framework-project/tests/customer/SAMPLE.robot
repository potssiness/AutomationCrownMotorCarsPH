*** Settings ***
Library    SeleniumLibrary
Resource   ../../configs/settingsAndResource.resource

*** Test Cases ***
Sample Test Case
    [Documentation]    https://carldagangon00.atlassian.net/browse/SCRUM-6
    Open Browser To Admin Page
    Wait Until Element Is Visible    ${WELCOME_TEXT}   timeout=${10_SECONDS}
    # Click Element    ${LOGIN_BUTTON}
    [Teardown]    Close Browser