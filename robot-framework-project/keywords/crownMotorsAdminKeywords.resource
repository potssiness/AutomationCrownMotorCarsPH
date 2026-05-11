*** Settings ***
Resource    ../configs/settingsAndResource.robot

*** Keywords ***
# Opens admin login page and waits for all login elements to be ready
Wait For Login Page Elements
    Wait For Elements State    ${LOADING_SPINNER}    hidden    timeout=${10_SECONDS}
    Wait For Elements State    ${CROWN_MOTORS_ADMIN_LOGO}    visible    timeout=${10_SECONDS}
    Wait For Elements State    ${WELCOME_TEXT}    visible    timeout=${10_SECONDS}
    Wait For Elements State    ${EMAIL_ADDRESS_FIELD}    visible    timeout=${10_SECONDS}
    Wait For Elements State    ${PASSWORD_FIELD}    visible    timeout=${10_SECONDS}
    Wait For Elements State    ${LOGIN_BUTTON}    visible    timeout=${10_SECONDS}
    Wait For Elements State    ${FORGOT_PASSWORD_LINK}    visible    timeout=${10_SECONDS}

# Suite setup: Opens browser to admin login page and prepares for testing
Login To Admin
    Open Browser Session             ${ADMIN_PAGE_URL}    ${BROWSER}
    Set Browser Timeout             ${10_SECONDS}
    Wait For Login Page Elements

# Enters valid admin credentials and submits login form
Login With Valid Credentials
    Fill Text    ${EMAIL_ADDRESS_FIELD}    ${ADMIN_EMAIL}
    Fill Text    ${PASSWORD_FIELD}    ${ADMIN_PASSWORD}
    Click    ${LOGIN_BUTTON}

# Tests invalid login flow and verifies error message appears
Verify Invalid Login Shows Error Message
    Fill Text    ${EMAIL_ADDRESS_FIELD}    ${ADMIN_INCORRECT_EMAIL}
    Fill Text    ${PASSWORD_FIELD}    ${ADMIN_INCORRECT_PASSWORD}
    Click    ${LOGIN_BUTTON}
    Take Screenshot
    Wait For Elements State    ${INVALID_CREDENTIALS_ERROR}    visible    timeout=${10_SECONDS}

# Verifies successful navigation to admin dashboard after login
Verify Successful Login To Admin Dashboard
    Wait For Elements State    ${DASHBOARD_HEADING}    visible    timeout=${10_SECONDS}
    Wait For Elements State    ${ADMIN_PROFILE_ICON}    visible    timeout=${10_SECONDS}

# Logs out from the admin dashboard
Logout From Admin Dashboard
    Click    ${LOGOUT_BUTTON}

# Security test: Verifies dashboard is not accessible after logout
Verify Dashboard Inaccessible After Logout
    Go To    ${ADMIN_DASHBOARD_URL}
    Wait For Elements State    ${CROWN_MOTORS_ADMIN_LOGO}    visible    timeout=${10_SECONDS}
