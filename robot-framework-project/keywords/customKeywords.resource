*** Settings ***
Resource    ../configs/settingsAndResource.robot

*** Keywords ***
Open Browser To URL
    [Arguments]    ${url}    ${browser}=chrome
    Open Browser    ${url}    ${browser}
