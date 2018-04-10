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
    sleep  1
    input text      ${FirstNameField}    ${first_name}
    sleep  1
    input text      ${LastNameField}     ${last_name}
    sleep  1
    input text      ${MUPEmailField}        ${email}
    sleep  1
    click element  ${SaveBtn}


Enable archived account
    [Documentation]  verify and enable archived account.
    [Arguments]  ${warning}
    sleep  1
    ${dialog_text}      get text        xpath=//*[@class='modal-body']
    should be equal     ${warning}      ${dialog_text}
    sleep  1
    click element       xpath=//*[.='Enable']


Verify duplicate message
    [Documentation]  Verify error message displays when create duplicate account
    [Arguments]  ${duplicate_message}
    sleep  1
    ${error_message}    get text      xpath=//*[@class='gj-error alert alert-danger']
    sleep  1
    should be equal     ${duplicate_message}    ${error_message}
    click element       xpath=//*[.='Cancel']



