*** Settings ***
Resource    ../setting/setting.resource
Resource    ../keyword/order_keyword.robot

Library    Browser

*** Test Cases ***
TC-ACC-001 Unregistered account cannot pay
    Open Web Bull VPN
    Click Order Tab
    Select Plan 6 month
    Insert Invalid Email
    Select Credit for payment
    Click Buy
    Validate Email or Username invalid



TC-ACC-002 Registered account can proceed
    Login
    Click Order Tab
    Select Plan 1 month
    Validate Total amount 1 month
    Select Credit for payment
    Click Buy
    Sleep    5s
    
TC-VAL-001 Empty email field shows required message
    Open Web Bull VPN
    Click Order Tab
    Select Plan 6 month
    Select Credit for payment
    Click Buy
    Validate Email or Username is Blank  

TC-ACT-002 Future activation date works
    Login
    Click Order Tab
    Select Plan 1 month
    Validate Total amount 1 month
    Select Future date
    Click Buy


    