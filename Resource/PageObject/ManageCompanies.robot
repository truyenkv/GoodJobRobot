*** Settings ***
Library     Selenium2Library

*** Variables ***
${AddCompany}       xpath=//button[contains(text(),'Add Company')]


*** Keywords ***
Open Manage Company page
    click element       ${AddCompany}

