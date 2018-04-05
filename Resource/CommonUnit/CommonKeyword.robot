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
Open login page
    open browser    ${url}      chrome
    maximize browser window
    sleep   3


Close page
    Close Browser

