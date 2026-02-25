*** Settings ***
Resource   ../configs/settingsAndResource.resource

*** Variables ***
${HEADLESS}    False


*** Keywords ***
Open Browser Session
    [Arguments]        ${URL}     ${BROWSER}
    Run Keyword If    '${HEADLESS}'=='True'    Open Headless Browser      ${URL}      ${BROWSER}
    ...    ELSE    Open Normal Browser  ${URL}    ${BROWSER}
    
Open Normal Browser
    [Arguments]    ${URL}    ${BROWSER}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Open Headless Browser
    [Arguments]    ${URL}    ${BROWSER}
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --window-size\=1920,1080
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --no-sandbox
    Open Browser    ${URL}    ${BROWSER}        options=${options}