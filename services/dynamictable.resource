*** Settings ***
Documentation    Files containing DynamicTable test keywords

Library    SeleniumLibrary
Library    String

Resource    ../locators/dynamictableLocators.resource

*** Keywords ***
Compare value from table and label
    ${cpuValue}    Get Text    ${cpuValueTable}
    ${yellowLabel}     Get value from yellow label
    IF    '${cpu_value}' == '${yellowLabel}'    
        Log    Sucesso!
    ELSE    
        Fail    'Values ​​don't match'
    END  
    
Get value from yellow label
    ${chromeValue}    Get Text    ${yellowValue}
    ${finalValue}    Fetch From Right    ${chromeValue}    :
    ${finalValue}    Split String    ${finalValue}
    RETURN    ${finalValue[0]}
    