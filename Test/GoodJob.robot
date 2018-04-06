*** Settings ***
Documentation       Some test case to check goodjob
Library             Selenium2Library
Library             Selenium3Library
Library             Dialogs
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
    Create account      truyen      kieu        robot.04@yopmail.com
    sleep   2
    page should contain     robot.04@yopmail.com
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
    Create account      truyen1      kieu1        robot.02@yopmail.com
    sleep   2
    execute manual step     Confirmation    robot.102@yopmail.com was previously used and deleted from the system. Do you want to re-enable this account?
#    execute manual step     Press  Pass
#    pause execution  message=robot.02@yopmail.com was previously used and deleted from the system. Do you want to re-enable this account?       Press Enable


