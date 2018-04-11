*** Settings ***
Library     Selenium2Library
Library     Selenium2Library

*** Variables ***
${Manage}                   xpath=//*[.='Manage']
${ManageAdministrators}     xpath=//*[contains(text(),'Manage Administrators')]
${UserMenu}                 xpath=//a[@id='gj-nav-dropdown']
${UserProfile}              xpath=//a[contains(text(),'User Profile')]

*** Keywords ***
Verify home page
    sleep   4
    title should be     Working Metrics
    page should contain     Companies
    page should contain     Welcome Truyen

Open Manage Administrator page
    sleep  2
    Open Manage Companies page
    sleep  2
    click element  ${ManageAdministrators}

Open User Profile
    sleep  2
    click element  ${UserMenu}
    sleep  2
    click element  ${userprofile}


Open Manage Companies page
    sleep  2
    click element  ${Manage}