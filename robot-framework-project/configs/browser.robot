*** Settings ***
Resource   ../configs/settingsAndResource.resource

*** Variables ***

${HEADLESS}    False


*** Keywords ***
Open Browser Session
    [Arguments]    ${URL}    ${BROWSER}=chrome
    Run Keyword If    '${HEADLESS}'=='True'    Open Headless Browser    ${URL}    ${BROWSER}
    ...    ELSE    Open Normal Browser    ${URL}    ${BROWSER}

Open Normal Browser
    [Arguments]    ${URL}    ${BROWSER}=chrome
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Open Headless Browser
    [Arguments]    ${URL}    ${BROWSER}=chrome
    # normalize browser name for comparisons
    ${_browser}=    Evaluate    '${BROWSER}'.lower()

    # Choose options class based on browser
    Run Keyword If    '${_browser}'=='chrome'    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Run Keyword If    '${_browser}'!='chrome'    ${options}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()   sys, selenium.webdriver

    # Headless flags: Chrome uses `--headless=new`; Firefox uses `--headless`
    Run Keyword If    '${_browser}'=='chrome'    Call Method    ${options}    add_argument    --headless=new
    Run Keyword If    '${_browser}'!='chrome'    Call Method    ${options}    add_argument    --headless

    # Set deterministic viewport for headless runs
    Run Keyword If    '${_browser}'=='chrome'    Call Method    ${options}    add_argument    --window-size=1920,1080
    Run Keyword If    '${_browser}'!='chrome'    Call Method    ${options}    add_argument    --width=1920
    Run Keyword If    '${_browser}'!='chrome'    Call Method    ${options}    add_argument    --height=1080

    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --no-sandbox

    Open Browser    ${URL}    ${BROWSER}    options=${options}

    # For Firefox, ensure the window size is applied after browser start
    Run Keyword If    '${_browser}'!='chrome'    Set Window Size    1920    1080