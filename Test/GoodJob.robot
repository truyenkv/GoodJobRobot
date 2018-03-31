*** Settings ***
Documentation       Some test case to check goodjob
Library             Selenium2Library
Resource            ../Resource/CommonKeyword.robot

*** Test Cases ***
Open browser for verify
    [Documentation]  first navigate
    [Tags]  nothing
    Open login page
    Close page
