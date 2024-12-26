*** Settings ***
Documentation    Files containing DynamicTable test locators

*** Variables ***
${cpuValueTable}    //span[text()="Chrome"]/following-sibling::span[contains(text(),"%")]
${yellowValue}    //p[@class="bg-warning"]