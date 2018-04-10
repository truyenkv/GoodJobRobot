*** Settings ***
Library     Selenium2Library

*** Variables ***
${AddCompany}       xpath=//*[.='Add Company']


*** Keywords ***
Open Manage Company page
    sleep  2
    click element       ${AddCompany}

