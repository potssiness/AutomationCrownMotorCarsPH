*** Settings ***
Library    Browser
Resource   ../../configs/settingsAndResource.robot
Suite Setup    Login To Admin
Suite Teardown    Browser.Close Browser

*** Test Cases ***
Dashboard Still Accessible After Logout
    [Documentation]    https://carldagangon00.atlassian.net/browse/SCRUM-21
    [Tags]    SCRUM-21    AdminRegression
    When Login With Valid Credentials
    And Verify Successful Login To Admin Dashboard
    And Logout From Admin Dashboard
    Then Verify Dashboard Inaccessible After Logout