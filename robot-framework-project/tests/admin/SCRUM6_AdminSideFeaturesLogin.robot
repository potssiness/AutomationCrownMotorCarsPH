*** Settings ***
Library    SeleniumLibrary
Resource   ../../configs/settingsAndResource.resource

*** Test Cases ***
Validate Screen Elements on Admin Login Page and Login Functionality
    [Documentation]    https://carldagangon00.atlassian.net/browse/SCRUM-6
    Given Open Browser To Admin Page
    When Login With Valid Credentials
    Then Verify Successful Login To Admin Dashboard


    [Teardown]    Close Browser