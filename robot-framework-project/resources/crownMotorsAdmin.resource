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
${LOGIN_BUTTON}                 //button[@type='submit']
${FORGOT_PASSWORD_LINK}         //button[contains(.,'Forgot Password?')]
${INVALID_CREDENTIALS_ERROR}    //p[normalize-space(text())='Invalid login credentials']
                                
# - Admin dashboard
${DASHBOARD_HEADING}            //p[normalize-space(text())='Welcome to your Dashboard, Admin!']
${ADMIN_PROFILE_ICON}           //img[@alt='Crown Motor Cars Logo']
${LOGOUT_BUTTON}                //button[normalize-space(text())='Logout']
${HUMBURGER_MENU}               //div[contains(@class,'flex items-center')]//button[1]