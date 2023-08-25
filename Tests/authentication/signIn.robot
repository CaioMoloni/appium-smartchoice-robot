***Settings***
Resource          ../../Resources/global/global.robot
Suite Setup       Acess Application       ${ENV}      ${LANGUAGE}     ${LOCALE}     signIn
Suite Teardown    Close Application
Test Setup        Launch Application
Test Teardown     Quit Application

***Test Cases***

1 - Login and go to home screen
    Wait until login page loads
    Type userName
    Type password
    Click on login button
    Wait for Login Successfull message
