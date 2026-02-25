*** Settings ***
Resource   ../configs/settingsAndResource.resource

*** Variables ***
# Environment-specific pages (stage)
# - Landing page used in end-to-end smoke tests
${CUSTOMER_URL}           https://stage.crownmotorcarsph.com/
${CROWN_MOTORS_LOGO}      //*[@id="root"]/div[1]/header/div/div/a/img

