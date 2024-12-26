*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Launch page
    [Arguments]     ${URL}

    Open Browser    ${URL}    Chrome
    Maximize Browser Window