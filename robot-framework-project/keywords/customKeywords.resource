*** Settings ***
Resource    ../configs/settingsAndResource.resource

*** Keywords ***
Open Browser To URL
    [Arguments]    ${url}    ${browser}=chrome
    Open Browser    ${url}    ${browser}
