***Settings***
Library     AppiumLibrary
Library     JSONLibrary
Resource    dinamicResources.robot
Resource    paths/resources_path_android.robot
Resource    paths/resources_path_iOS.robot
Resource    physicalDevice_config.robot

***Variables***
${APP_URL}              http://localhost:4723/wd/hub
${json_android}         ENV/desired_capabilities_android.json
${json_ios}             ENV/desired_capabilities_iOS.json
${currentDirectory}     ${CURDIR}

***Keywords***

Acess Application
    [Arguments]     ${ENV_arg}     ${LANGUAGE_arg}     ${LOCALE_arg}     ${testSuite}

    IF          "${ENV_arg}"=="Android"

        Setup Locators        ${ENV_arg}          ${testSuite}

        Android app config

    ELSE IF     "${ENV_arg}"=="iOS"

        Setup Locators        ${ENV_arg}          ${testSuite}

        iOS app config
    END
