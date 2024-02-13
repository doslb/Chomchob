*** Keywords ***
Verify book name
    [Arguments]    ${book_list}
    ${cart_book_list}    Create List
    Wait Until Element Is Visible    ${lbl_book}
    ${total_book}    Get Element Count    ${lbl_book}
    FOR  ${i}  IN RANGE   1    ${total_book}+1
        ${index}    Convert To String    ${i}
        ${lbl_book_name_after_replace}    Replace String    ${lbl_book_name}    index    ${index}
        Scroll Element Into View    ${lbl_book_name_after_replace}
        ${book_name}    Get Text    ${lbl_book_name_after_replace}
        Append To List    ${cart_book_list}    ${book_name}
    END
    Lists Should Be Equal    ${cart_book_list}    ${book_list}

Remove all books
    ${total_book}    Get Element Count    ${lbl_book}
    Run Keyword And Ignore Error    Click Element    ${btn_up_page}
    FOR  ${i}  IN RANGE   ${total_book}
        Scroll Element Into View    ${btn_remove_book}
        Wait Until Element Is Visible    ${btn_remove_book}
        Wait Until Keyword Succeeds    10x    1s    Click Element    ${btn_remove_book}
        Wait Until Element Is Visible    ${btn_confirm_remove_book}
        Wait Until Keyword Succeeds    10x    1s    Click Element    ${btn_confirm_remove_book}
    END
    Wait Until Element Is Visible    ${lbl_empty_book}
    
Verify total cart
    [Arguments]    ${expected_total}
    Scroll Element Into View    ${lbl_cart_total}
    ${total_book}    Get Text    ${lbl_cart_total}
    Should Be Equal As Strings    ${total_book}    ${expected_total}
