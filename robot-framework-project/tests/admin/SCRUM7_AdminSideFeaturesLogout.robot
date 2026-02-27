*** Settings ***
Library    SeleniumLibrary
Resource   ../../configs/settingsAndResource.robot
Suite Setup    Login To Admin
Suite Teardown    Close Browser

*** Test Cases ***
Validate Screen Elements on Admin Login Page and Login Functionality
    [Documentation]    https://carldagangon00.atlassian.net/browse/SCRUM-7
    [Tags]    SCRUM-7    AdminRegression
    When Proper validation for incorrect login credentials and error messages
    Then Login With Valid Credentials
    And Verify Successful Login To Admin Dashboard
    Then Logout From Admin Dashboard