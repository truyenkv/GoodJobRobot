*** Settings ***
Library     Selenium2Library
Resource     ManageUserProfile.robot

*** Variables ***
${AddUser}      xpath=//button[contains(text(),'Add User')]


*** Keywords ***
Open Manage User Profile
    click element       ${AddUser}

