*** Settings ***
Library     Selenium2Library


*** Variables ***
${url}              http://goodjobs-dev.dynagility.us/
${EmailField}       id=loginEmail
${PasswordField}    id=loginPassword
${LoginButton}      xpath=//button[@type='submit']
${email}            cd.001@yopmail.com
${password}         11111111xx@X

*** Keywords ***
Login site
    input text  ${EmailField}       ${email}
    input text  ${PasswordField}    ${password}
    sleep       3
    click element  ${loginbutton}


Verify login page when login with incorrect account
    sleep       3
    page should contain     Invalid email and/or password.