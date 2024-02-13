*** Keywords ***
Select and get cartoon name with amount
    [Arguments]    ${amount}
    ${cartoon_name_list}    Create List
    FOR  ${i}  IN RANGE    1    ${amount}+1
        ${index}    Convert To String    ${i}
        ${lbl_cartoon_name_after_replace}    Replace String    ${lbl_cartoon_name}    index    ${index}
        ${btn_cartoon_cart_after_replace}    Replace String    ${btn_cartoon_cart}    index    ${index}
        Scroll Element Into View    ${lbl_cartoon_name_after_replace}
        ${name}    Get Text    ${lbl_cartoon_name_after_replace}
        Scroll Element Into View    ${btn_cartoon_cart_after_replace}
        Wait Until Keyword Succeeds    10x    1s    Click Element    ${btn_cartoon_cart_after_replace}
        Append To List    ${cartoon_name_list}    ${name}
    END
    [Return]    ${cartoon_name_list}
    
Click menu cart
    Wait Until Keyword Succeeds    10x    1s    Click Element    ${btn_menu_cart}

Click accept cookie
    Click Element    ${btn_accept_cookie}