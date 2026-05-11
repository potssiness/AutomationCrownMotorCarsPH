*** Settings ***
Library    Browser
Resource   ../../configs/settingsAndResource.robot
Suite Setup    Login To Admin
Suite Teardown    Browser.Close Browser

*** Test Cases ***
Validate Screen Elements on Admin Login Page and Login Functionality
    [Documentation]    https://carldagangon00.atlassian.net/browse/SCRUM-6
    [Tags]    SCRUM-6    AdminRegression
    When Verify Invalid Login Shows Error Message
    Then Login With Valid Credentials
    Then Verify Successful Login To Admin Dashboard