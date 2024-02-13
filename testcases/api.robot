*** Settings ***
Resource    ${CURDIR}/../resources/imports.robot

*** Test Cases ***
TC1
    [Documentation]    GET - All Users
    Get all users

TC2
    [Documentation]    GET - User Info
    Get user by id    1

TC3
    [Documentation]    Create User
    ${create_res}    Create user    ${api}[name]    ${api}[job]

TC4
    [Documentation]    Update User    **** api not support  *****
    ${update_res}    Update user    1    ${api}[new_name]    ${api}[new_job]
    ${get_res}    Get user by id    1
    Should Be Equal    ${get_res}[data][name]    ${api}[new_name]
    Should Be Equal    ${get_res}[data][job]    ${api}[new_job]

TC5
    [Documentation]    Delete user    **** api not support  *****
    ${delete_res}    Delete user    1    ${api}[name]    ${api}[job]
    ${get_res}    Get user by id    1
    Should Be Equal    ${get_res.status_code}    404

TC6
    [Documentation]    create user and update name, job and verify them should be updated    **** api not support  *****
    ${create_res}    Create user    ${api}[name]    ${api}[job]
    ${update_res}    Update user    ${create_res}[id]    ${api}[new_name]    ${api}[new_job]
    ${get_res}    Get user by id    ${create_res}[id]
    Should Be Equal    ${get_res}[data][name]    ${api}[new_name]
    Should Be Equal    ${get_res}[data][job]    ${api}[new_job]
