*** Keywords ***
Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Text    accessibility_id=username    ${username}
    Input Text    accessibility_id=password    ${password}
    Click Element    accessibility_id=login