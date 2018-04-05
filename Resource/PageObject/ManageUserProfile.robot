*** Settings ***
Library         Selenium2Library

*** Variables ***
${FirstNameField}        id=firstNameInput
${LastNameField}         id=lastNameInput
${MUPEmailField}            id=emailInput
${SaveBtn}             xpath=//button[contains(text(),'Save')]

*** Keywords ***
Create account
    [Documentation]  support input text to field.
    [Arguments]     ${first_name}    ${last_name}   ${email}
    sleep  2
#    click element   ${FirstNameField}
    input text      ${FirstNameField}    ${first_name}
    sleep  1
#    click element   ${LastNameField}
    input text      ${LastNameField}     ${last_name}
    sleep  1
#    log to console  ${MUPEmailField}
#    click element   ${MUPEmailField}
    input text      ${MUPEmailField}        ${email}
    sleep  1
    click element  ${SaveBtn}
