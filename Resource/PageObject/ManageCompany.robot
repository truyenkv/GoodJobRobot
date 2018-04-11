*** Settings ***
Library     Selenium2Library

*** Variables ***
${CompanyName}                  id=companyNameInput
${CompanyIdentifier}            id=einInput
${Sector/Industy}               xpath=//*[@id='react-select-4--value-item']
${Sector/IndustryValue}         xpath=//input[@aria-activedescendant='react-select-4--option-5']
${Sub-sector}                   id=react-select-10--value-item
${PercentageOfTemporary}        id=react-select-11--value-item

*** Keywords ***
Create a company
    [Documentation]  create a new company
    [Arguments]  ${name_company}
    sleep  1
    input text          ${companyname}              ${name_company}
    sleep  2
    click element       ${Sector/Industy}
    sleep  2
    input text          ${Sector/Industy}        Mining
    sleep  5


