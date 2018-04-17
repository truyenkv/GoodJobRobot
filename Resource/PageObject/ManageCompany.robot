*** Settings ***
Library     Selenium2Library
Library     ../../Library/KeyboardHandler.py
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
    double_press_down
    sleep  1
    press_enter
    sleep  1
    press_tab
    sleep  1
    double_press_down
    sleep  1
    press_enter
    sleep  1
    press_tab
    sleep  1
    double_press_down
    sleep  1
    press_enter
    sleep  5
