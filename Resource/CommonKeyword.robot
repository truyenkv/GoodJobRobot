*** Settings ***
Library     Selenium2Library


*** Variables ***
${url}      http://goodjobs-dev.dynagility.us/


*** Keywords ***
Open login page
    open browser    ${url}      chrome
    maximize browser window
    sleep   3


Close page
    Close Browser


