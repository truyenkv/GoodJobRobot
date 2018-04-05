*** Settings ***
Library         Selenium2Library

*** Variables ***
${FirstName}        id=firstNameInput
${LastName}         id=lastNameInput
${Email}            id=emailInput
${Save}             xpath=//button[contains(text(),'Save')]

*** Keywords ***
Create account
    [Documentation]  support input text to field.
    [Arguments]     ${first_name}    ${last_name}   ${email}
    sleep  2
    input text      ${FirstName}    ${first_name}
    sleep  1
    input text      ${LastName}     ${last_name}
    sleep  1
    input text      ${Email}        ${email}
    sleep  1
    click element  ${Save}
