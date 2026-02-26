*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot

*** Variables ***
# Environment-specific pages (stage)
# - Admin login page
${ADMIN_PAGE_URL}               https://stage.crownmotorcarsph.com/admin/login
${CROWN_MOTORS_ADMIN_LOGO}      //*[@id="root"]/div[1]/div[1]/div/div/div/div/img
${WELCOME_TEXT}                 //h2[normalize-space(text())='Welcome to Crown Motor Cars, Admin']
${EMAIL_ADDRESS_FIELD}          (//label[normalize-space(text())='Email Address']/following::input)[1]
${PASSWORD_FIELD}               //input[@type='password']
${LOGIN_BUTTON}                 (//button[@name='login']//span)[1]
${FORGOT_PASSWORD_LINK}         //button[@name='forgot password']/span[1]/span[1]