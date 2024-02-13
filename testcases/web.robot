*** Settings ***
Resource    ${CURDIR}/../resources/imports.robot

*** Test Cases ***
TC1
    Open Nejavu web
    Close banner popup
    Select menu by text    ${web}[menu_cartoon]
    Click accept cookie
    ${cartoon_name_list}    Select and get cartoon name with amount    5
    Click menu cart
    Verify book name    ${cartoon_name_list}
    Remove all books
    Verify total cart    0
