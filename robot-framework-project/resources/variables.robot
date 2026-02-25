*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# Browser settings
# - Chosen browser for UI tests; CI can override via command-line
${BROWSER}     Chrome

# Timeouts (units: seconds)
# - Use descriptive names and keep units in comments
# - `10_SECONDS` kept for backwards compatibility; prefer `DEFAULT_TIMEOUT`
${10_SECONDS}     10
${DEFAULT_TIMEOUT}    ${10_SECONDS}    # integer seconds, used for explicit waits

# Secrets
# - Do NOT store raw passwords or secrets in this file. Use CI/secret manager
# - Example: set `${SECRET_ADMIN_PASS}` in CI and reference it in tests
