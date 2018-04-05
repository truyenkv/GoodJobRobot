*** Settings ***
Library     Selenium2Library
Library     Selenium2Library

*** Variables ***
${Manage}                   xpath=//*[.='Manage']
${ManageAdministrators}     xpath=//*[contains(text(),'Manage Administrators')]

*** Keywords ***
Verify home page
    sleep       4
    title should be     Working Metrics
    page should contain     Companies
    page should contain     Welcome Truyen

Open Manage Administrator page
    sleep  2
    click element  ${Manage}
    sleep  2
    click element  ${ManageAdministrators}
