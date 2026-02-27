*** Settings ***
Library    SeleniumLibrary
Resource   ../../configs/settingsAndResource.resource
Suite Setup    Open Browser To Admin Page
Suite Teardown    Close Browser

*** Test Cases ***
Validate Screen Elements on Admin Login Page and Login Functionality
    [Documentation]    https://carldagangon00.atlassian.net/browse/SCRUM-7
    When Proper validation for incorrect login credentials and error messages
    Then Login With Valid Credentials
    And Verify Successful Login To Admin Dashboard
    Then Logout From Admin Dashboard