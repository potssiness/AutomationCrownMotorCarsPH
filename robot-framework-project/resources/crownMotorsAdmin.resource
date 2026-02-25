*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot

*** Variables ***
# Environment-specific pages (stage)
# - Admin login page
${ADMIN_PAGE_URL}    https://stage.crownmotorcarsph.com/admin/login
${CROWN_MOTORS_ADMIN_LOGO}      //*[@id="root"]/div[1]/div[1]/div/div/div/div/img
${WELCOME_TEXT}    //h2[normalize-space(text())='Welcome to Crown Motor Cars, Admin']
