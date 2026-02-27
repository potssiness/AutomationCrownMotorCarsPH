*** Settings ***
Library    SeleniumLibrary
Resource   ../../configs/settingsAndResource.resource
Suite Setup    Open Browser To Admin Page
Suite Teardown    Close Browser

*** Test Cases ***
Validate Screen Elements on Admin Login Page and Login Functionality
    [Documentation]    https://carldagangon00.atlassian.net/browse/SCRUM-6
    When Login With Valid Credentials
    Then Verify Successful Login To Admin Dashboard