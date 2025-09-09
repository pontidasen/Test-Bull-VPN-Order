*** Settings ***
Resource    ../setting/setting.resource

*** Keywords ***
Wait_Click   
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    20s
    Wait Until Element Is Enabled    ${locator}
    Click Element    ${locator}

Open Web Bull VPN 
    SeleniumLibrary.Open Browser    https://www.bullvpn.com/login    chrome
    Sleep    2s
    Wait_Click    ${Agree_btn}
    Sleep    2s

login
    SeleniumLibrary.Open Browser    https://www.bullvpn.com/login    chrome
    Input Text    ${username_lc}    ${Username}
    Input Password    ${password_lc}    ${Password}
    Sleep    2s
    Wait_Click    ${Agree_btn}
    Scroll Element Into View    ${Affiliate_Program_text_lc}
    Wait_Click    ${login_btn_lc}
    Sleep     2 s

    