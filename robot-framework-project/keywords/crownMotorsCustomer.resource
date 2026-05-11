*** Settings ***
Resource   ../configs/settingsAndResource.robot

*** Keywords ***
Open Browser To customer Landing Page
    Open Browser To URL             ${CUSTOMER_URL}    ${BROWSER}
    Set Browser Timeout            ${10_SECONDS}
    Wait For Elements State   ${CROWN_MOTORS_LOGO}    visible    timeout=${10_SECONDS}