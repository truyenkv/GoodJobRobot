*** Settings ***
Documentation       Some test case to check goodjob
Library             Selenium2Library
Library             Dialogs
Resource            ../Resource/CommonUnit/CommonKeyword.robot
Resource            ../Resource/PageObject/Login.robot
Resource            ../Resource/PageObject/Home.robot
Resource            ../Resource/PageObject/ManageAdministrator.robot
Resource            ../Resource/PageObject/ManageUserProfile.robot
Resource            ../Resource/PageObject/ManageCompany.robot
Resource            ../Resource/PageObject/ManageCompanies.robot
#Suite Setup         Open login page
#Suite Teardown      Close Page
Test Setup           Open login page
Test Teardown        Close Page

*** Test Cases ***

Verify login site success with valid account.
    [Documentation]  verify home page after login success
    [Tags]  login
    Login site
    Verify home page


Verify create valid Admin account successfully
    [Documentation]  create valid account
    [Tags]  manageadmin
    Login site
    sleep  5
    Open Manage Administrator page
    sleep  2
    Open Manage User Profile
    sleep   2
    Create account      truyen      kieu        robot.07@yopmail.com
    sleep   2
    page should contain     robot.07@yopmail.com
    page should contain     truyen kieu


Verify enable admin account successfully
    [Documentation]  create archived account
    [Tags]      manageadmin     archived
    Login site
    sleep  5
    Open Manage Administrator page
    sleep  2
    Open Manage User Profile
    sleep   2
    Create account      truyen1      kieu1        robot.04@yopmail.com
    sleep   2
    Enable archived account  robot.04@yopmail.com was previously used and deleted from the system. Do you want to re-enable this account?
    sleep   2
    page should contain     robot.04@yopmail.com



Verify add duplicate admin account
    [Documentation]  create duplicate account
    [Tags]      manageadmin     duplicate
    Login site
    sleep  5
    Open Manage Administrator page
    sleep  2
    Open Manage User Profile
    sleep   2
    Create account      truyen1      kieu1        robot.06@yopmail.com
    sleep   2
    Verify duplicate message        Email robot.06@yopmail.com is already in use
    sleep   3
    page should contain     robot.06@yopmail.com



Verify update user profile
    [Documentation]  update user profile
    [Tags]      manageadmin     userprofile
    Login site
    sleep  5
    Open User Profile
    sleep  2
    Update account      truyen3     kieu3
    sleep  3
    page should contain     truyen3 kieu3


Verify create new company success
    [Documentation]  create new company
    [Tags]      manageadmin     company
    Login site
    sleep  5
    Open Manage Companies page
    sleep  2
    Open Manage Company page
    sleep  4
    Create a company        truyen1






