***Settings***
Resource    ../global/global.robot

***Keywords***
Wait until login page loads
    Wait Until Element Is Visible         ${signInEmail_input}         10

Type userName
    Input Text         ${signInEmail_input}         ${validEmail_string}

Type password
    Input Text          ${signInPassword_input}         ${validEmailPwd_string}

Click on login button
    Click Element       ${signIn_button}

Click on logout button
    Click Element       ${logout_button}
    Wait Until Element Is Visible         ${signInEmail_input}         10
