*** Settings ***
Resource        global.robot

*** Keywords ***

Android app config
    ${desired_capabilities_android}=     Load JSON From File    ${json_android}
    ${automation_Name}=      Get Value from Json     ${desired_capabilities_android}     $.automationName 
    ${platform_Name}=        Get Value from Json     ${desired_capabilities_android}     $.platformName
    ${device_Name}=          Get Value from Json     ${desired_capabilities_android}     $.deviceName
    ${app}=                  Get Value from Json     ${desired_capabilities_android}     $.app
    ${udid}=                 Get Value from Json     ${desired_capabilities_android}     $.udid
    Open Application                    ${APP_URL}
    ...                                 automationName=${automation_Name[0]}
    ...                                 platformName=${platform_Name[0]}
    ...                                 deviceName=${device_Name[0]}
    ...                                 app=${app[0]}
    ...                                 udid=${udid[0]}
    ...                                 autoGrantPermissions=true
    Wait Until Element is Visible       ${signInEmail_input}   40
    Log to Console                      Android config running....

iOS app config
    ${desired_capabilities_ios}=     Load JSON From File    ${json_ios}
    ${automation_Name}=      Get Value from Json     ${desired_capabilities_ios}     $.automationName
    ${platform_Name}=        Get Value from Json     ${desired_capabilities_ios}     $.platformName
    ${device_Name}=          Get Value from Json     ${desired_capabilities_ios}     $.deviceName
    ${app}=                  Get Value from Json     ${desired_capabilities_ios}     $.app
    ${bundle_Id}=            Get Value from Json     ${desired_capabilities_ios}     $.bundleId
    ${udid}=                 Get Value from Json     ${desired_capabilities_ios}     $.udid
    Open Application                    ${APP_URL}
    ...                                 automationName=${automation_Name[0]}
    ...                                 platformName=${platform_Name[0]}
    ...                                 deviceName=${device_Name[0]}
    ...                                 app=${app[0]}
    ...                                 bundleId=${bundle_Id[0]}
    ...                                 udid=${udid[0]}
    ...                                 autoGrantPermissions=true
    Wait Until Element is Visible       ${signInEmail_input}   40
    Log to Console                      iOS config running....
