*** Settings ***
Library    AppiumLibrary

Resource    tests.robot

*** Keywords ***
Start Session
    AppiumLibrary.Open Application    http://localhost:4723/wd/hub
    ...                               automationName=UiAutomator2
    ...                               platformName=Android
    ...                               deviceName=Android Emulator
    ...                               app=${EXECDIR}/app/nuclone.apk
    ...                               udid=emulator-5554

    Wait Until Element Is Visible    accessibility_id=card-hero    10

Close Session
    Capture Page Screenshot
    
    Close Application