*** Settings ***
Library     Selenium2Library

*** Variables ***
${CompanyName}                  id=companyNameInput
${CompanyIdentifier}            id=einInput
${Sector/Industy}               id=react-select-9--value-item
${Sub-sector}                   id=react-select-10--value-item
${PercentageOfTemporary}        id=react-select-11--value-item

*** Keywords ***
Create a company
    [Documentation]  create a new company
    [Arguments]  ${name_company}
    sleep  1
    input text      ${companyname}      ${name_company}
    sleep  2
    click element    ${Sector/Industy}
    sleep  5


