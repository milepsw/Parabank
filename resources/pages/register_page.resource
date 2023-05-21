*** Keywords ***
Input firstname
    [Arguments]     ${firstName}
    component_keyword.Input element when ready      ${FIRSTNAME.TXT}       ${firstName}

Input lastname
    [Arguments]     ${lastName}
    component_keyword.Input element when ready      ${LASTNAME.TXT}        ${lastName}

Input address
    [Arguments]     ${address}
    component_keyword.Input element when ready      ${ADDRESS.TXT}      ${address}

Input city
    [Arguments]     ${city}
    component_keyword.Input element when ready      ${CITY.TXT}    ${city}

Input state
    [Arguments]     ${state}
    component_keyword.Input element when ready      ${STATE.TXT}   ${state}

Input zipcode
    [Arguments]     ${zipCode}
    component_keyword.Input element when ready      ${ZIPCODE.TXT}     ${zipCode}

Input phone
    [Arguments]     ${phone}
    component_keyword.Input element when ready      ${PHONE.TXT}     ${phone}

Input ssn
    [Arguments]     ${ssn}
    component_keyword.Input element when ready      ${SSN.TXT}     ${ssn}

Input username
    [Arguments]     ${username}
    component_keyword.Input element when ready      id=customer.username        ${username}

Input password
    [Arguments]     ${password}
    component_keyword.Input element when ready      id=customer.password        ${password}

Input confirm password
    [Arguments]     ${repeatedPassword}
    component_keyword.Input element when ready      ${CONFIRMPASS.TXT}         ${repeatedPassword}

Click register button
    component_keyword.Click element when ready      ${REGISTER.BTN}