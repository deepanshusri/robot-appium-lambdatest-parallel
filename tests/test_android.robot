*** Settings ***
Library           AppiumLibrary

Suite Setup       Open Application    ${REMOTE_URL}    ${ANDROID_CAPS}
Suite Teardown    Close Application

Resource          ../resources/keywords.robot
Variables         ../config/lambdatest_config.py

*** Test Cases ***
Open Android App
    [Documentation]    Open Android app and verify element
    Wait Until Element Is Visible    accessibility_id=login    10s
    Element Should Be Visible        accessibility_id=login

Login Android App
    Input Text    accessibility_id=username    user1
    Input Text    accessibility_id=password    pass123
    Click Element    accessibility_id=login
    Wait Until Element Is Visible    accessibility_id=welcome    10s
    Element Should Be Visible        accessibility_id=welcome