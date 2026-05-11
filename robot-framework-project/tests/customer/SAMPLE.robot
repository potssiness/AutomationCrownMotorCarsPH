*** Settings ***
Resource   ../../configs/libraries.resource
Resource   ../../configs/settingsAndResource.robot

*** Test Cases ***
Sample Test Case
    [Documentation]    https://carldagangon00.atlassian.net/browse/SCRUM-6
    Open Browser Session       ${CUSTOMER_URL}    ${BROWSER}

    [Teardown]    Browser.Close Browser