*** Keywords ***
Input username
    [Arguments]     ${username}
    component_keyword.Input element when ready      ${USERNAME.TXT}     ${username}

Input password
    [Arguments]     ${password}
    component_keyword.Input element when ready      ${PASSWORD.TXT}     ${password}

Click login button
    component_keyword.Click element when ready      ${LOGIN.BTN}

Click register hyperlink
    component_keyword.Click element when ready      ${RIGISTER.LINK}