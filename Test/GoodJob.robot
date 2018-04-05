*** Settings ***
Documentation       Some test case to check goodjob
Library             Selenium2Library
Resource            ../Resource/CommonUnit/CommonKeyword.robot
Resource            ../Resource/PageObject/Login.robot
Resource            ../Resource/PageObject/Home.robot
Resource            ../Resource/PageObject/ManageAdmin.robot
Resource            ../Resource/PageObject/ManageUserProfile.robot
Suite Setup         Open login page
Suite Teardown      Close Page


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
    Create account      truyen      kieu        robot.01@yopmail.com

