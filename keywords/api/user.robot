*** Keywords ***
Get all users
    ${res}    GET    url=${api_url}    expected_status=200
    [Return]    ${res.json()}

Get user by id
    [Arguments]    ${id}
    ${res}    GET    url=${api_url}/${${id}}    expected_status=200
    [Return]    ${res.json()}

Create user
    [Arguments]    ${name}    ${job}
    ${body}    Create Dictionary    name=${name}    job=${job}
    ${res}    POST    url=${api_url}    data=${body}    expected_status=201
    [Return]    ${res.json()}

Update user
    [Arguments]    ${id}    ${name}    ${job}
    ${body}    Create Dictionary    name=${name}    job=${job}
    ${res}    PATCH    url=${api_url}/${${id}}    data=${body}    expected_status=200
    [Return]    ${res.json()}

Delete user
    [Arguments]    ${id}    ${name}    ${job}
    ${body}    Create Dictionary    name=${name}    job=${job}
    ${res}    PATCH    url=${api_url}/${${id}}    data=${body}    expected_status=204
    [Return]    ${res.json()}