*** Settings ***
Library           AppiumLibrary

Suite Setup       Open Application    ${REMOTE_URL}    ${IOS_CAPS}
Suite Teardown    Close Application

Resource          ../resources/keywords.robot
Variables         ../config/lambdatest_config.py

*** Test Cases ***
Open iOS App
    Wait Until Element Is Visible    accessibility_id=login    10s
    Element Should Be Visible        accessibility_id=login

Login iOS App
    Input Text    accessibility_id=username    user2
    Input Text    accessibility_id=password    pass456
    Click Element    accessibility_id=login
    Wait Until Element Is Visible    accessibility_id=welcome    10s
    Element Should Be Visible        accessibility_id=welcome