*** Settings ***
Resource   ../configs/settingsAndResource.robot

*** Variables ***
${HEADLESS}    False


*** Keywords ***
Open Browser Session
    [Arguments]        ${URL}     ${BROWSER}
    Run Keyword If    '${HEADLESS}'=='True'    Open Headless Browser      ${URL}      ${BROWSER}
    ...    ELSE    Open Normal Browser  ${URL}    ${BROWSER}
    
Open Normal Browser
    [Arguments]    ${URL}    ${BROWSER}
    New Browser    ${BROWSER}    headless=False
    New Page    ${URL}
    Set Viewport Size    1920    1080

Open Headless Browser
    [Arguments]    ${URL}    ${BROWSER}
    New Browser    ${BROWSER}    headless=True
    New Page    ${URL}