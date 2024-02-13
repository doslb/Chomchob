*** Keywords ***
Open Nejavu web
    Open Browser    ${web_url}    Google Chrome
    ...    options=add_experimental_option("detach", True)

Close banner popup
    ${is_display}    Run Keyword And Return Status    Element Should Be Visible    ${btn_banner_close}
    Run Keyword If    ${is_display}    Click Element    ${btn_banner_close} 

Select menu by text
    [Arguments]    ${menu_text}
    ${btn_menu_after_replace}    Replace String    ${btn_menu}    menu_text    ${menu_text}
    Click Element    ${btn_menu_after_replace}
