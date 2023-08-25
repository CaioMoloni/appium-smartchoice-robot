***Settings***
Resource        global.robot

*** Keywords ***

Setup Locators
    [Arguments]     ${ENV}       ${SUITE} 

    IF     "${ENV}"=="Android"
        
        IF          "${SUITE}"=="signIn"
            Import Resource       ${signInPage_android}
            Import Resource       ${signIn_android}
        END


    ELSE IF      "${ENV}"=="iOS"

        IF          "${SUITE}"=="signIn"
            Import Resource        ${signInPage_iOS}  
            Import Resource        ${signIn_iOS}  
        END
        
    END

