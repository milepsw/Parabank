*** Keywords ***
Verify user registered successful message
    Seleniumlibrary.Wait until element is visible       ${SUCCESSFUL.REGIS.TEXT}

Verify login successful with full name
    [Arguments]     ${firstName}    ${lastName}
    ${firstname.locator}=   String.Replace String       //p[contains(text(), '{firstName}')]      {firstName}     ${firstName}
    ${fullname.locator}=    String.Replace string       ${firstname.locator}     {lastName}     ${lastName}
    Seleniumlibrary.Wait until element is visible       ${fullname.locator}

Click Log out
    component_keyword.Click element when ready          ${LOGOUT.BTN}