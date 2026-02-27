*** Settings ***
Library    SeleniumLibrary
Resource   ../../configs/settingsAndResource.robot
Suite Setup    Login To Admin
Suite Teardown    Close Browser

*** Test Cases ***
Dashboard Still Accessible After Logout
    [Documentation]    https://carldagangon00.atlassian.net/browse/SCRUM-21
    [Tags]    AdminRegression
    When Login With Valid Credentials
    And Verify Successful Login To Admin Dashboard
    And Logout From Admin Dashboard
    Then Access with specific URL of Admin Dashboard