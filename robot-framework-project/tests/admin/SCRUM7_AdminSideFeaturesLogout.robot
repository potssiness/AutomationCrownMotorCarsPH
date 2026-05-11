*** Settings ***
Library    Browser
Resource   ../../configs/settingsAndResource.robot
Suite Setup    Login To Admin
Suite Teardown    Browser.Close Browser

*** Test Cases ***
Validate Admin Logout Functionality
    [Documentation]    https://carldagangon00.atlassian.net/browse/SCRUM-7
    [Tags]    SCRUM-7    AdminRegression
    When Verify Invalid Login Shows Error Message
    Then Login With Valid Credentials
    And Verify Successful Login To Admin Dashboard
    Then Logout From Admin Dashboard