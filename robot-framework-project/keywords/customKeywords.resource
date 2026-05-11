*** Settings ***
Resource    ../configs/settingsAndResource.robot

*** Keywords ***
Open Browser To URL
    [Arguments]    ${url}    ${browser}=chromium
    New Browser    ${browser}
    New Page    ${url}
