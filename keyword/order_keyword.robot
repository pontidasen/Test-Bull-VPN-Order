*** Settings ***
Library    SeleniumLibrary
Library    Browser
Resource    ../setting/setting.resource

*** Keywords ***
Scroll_Click
    [Arguments]    ${locator}
    Scroll Element Into View    ${locator}
    Wait Until Element Is Visible    ${locator}
    Wait Until Element Is Enabled    ${locator}
    Click Element    ${locator}

Validate Total amount 1 month
    ${Total_amount_2}    SeleniumLibrary.Get Text    ${Total_amount_lc}
    IF    "${Total_amount_2}" == "${Total_amount}"
        Log To Console    Price is valid
    ELSE
        Log To Console    Price is not valid
    END


Validate Email or Username invalid       
    ${popup_email_not_found_2}    SeleniumLibrary.Get Text    ${popup_email_not_found_lc}
    IF    "${popup_email_not_found_2}" == "${popup_email_not_found}"
        Log To Console    Email is invalid
    ELSE
        Log To Console    Email is valid
    END


Validate Email or Username is Blank      
    ${is_reqire2}    SeleniumLibrary.Get Text    ${is_reqire_lc}
    Log To Console    ${is_reqire2}
    IF    "${is_reqire2}" == "${is_reqire}"
        Log To Console    Show message is required
    ELSE
        Log To Console    Not Show message is required
    END

Validate Device Default show in both sections    
    Sleep    2s
    Scroll Element Into View    ${Buy_Now_lc}
    ${Device_default2}    SeleniumLibrary.Get Text    ${Device_default_lc}
    ${Device_default3}    SeleniumLibrary.Get Text    ${Device_default_SUM_lc}
    Log To Console    aaaa${Device_default2} 
    Log To Console    bbbb${Device_default3}

    IF    "${Device_default2}" == "${Device_default}" and "${Device_default3}" == "${Device_default}"
        Log To Console    Device Default show in both sections
    ELSE
        Log To Console    Device Default not show in both sections
    END


Click Order Tab
    Wait_Click    ${Order_tab_lc}

Select Plan 1 month
    Scroll_Click    ${1month_lc}

Select Plan 6 month
    Scroll_Click    ${6month_lc}

Select Plan 1 year
    Scroll_Click    ${1year_lc}

Input Discount code
    Scroll Element Into View    ${Buy_Now_lc}
    Sleep    5s
    Wait_Click     ${discount_code_text_lc}
    Scroll_Click    ${discount_code_lc}
    Input Text    ${discount_code_lc}    ${Discount_code}

Click USE Discount code
    Wait_Click    ${USE_discount_btn_lc}

Validate Discount code is Used
    ${Discount2}    SeleniumLibrary.Get Text    ${Discount_Sum_lc}
    Log To Console    ${Discount2}
    IF    "${Discount2}" == "${Discount_SUM_Default}"
        Log To Console    Discount code can use
    ELSE
        Log To Console    Discount code can not use
    END

Click Buy
    Sleep    2s
    Scroll_Click    ${Buy_Now_lc}
    


Select Credit for payment
    Sleep     2s
    Scroll_Click    ${credit_debit_lc}

Insert Invalid Email
    Scroll_Click    ${input_email_lc}
    Input Text    ${input_email_lc}    ${Invalid_Email}


Select Future date
    Wait_Click    ${Bullet_point_Activate_date_lc}
    Wait_Click    ${Activate_date_popup_lc}
    Wait_Click    ${Calendar_date_lc}
    Wait_Click    ${Select_futuredate_18_lc}