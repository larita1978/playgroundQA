*** Settings ***
Documentation    Below you see a table where columns and rows change their position upon page reload. 
...    Values in cells are random. The table is based on DIVs with ARIA attributes.
Resource    ../services/dynamictable.resource
Resource    ../services/browser.resource

Test Teardown        Close Browser

*** Test Cases ***
Scenario:: Validate if CPU Chrome on table value 
    Launch page    http://uitestingplayground.com/dynamictable
    Compare value from table and label
