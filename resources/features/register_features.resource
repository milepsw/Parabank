*** Keywords ***
Verify user can register successful
    [Arguments]     ${firstName}    ${lastName}     ${address}      ${city}     ${state}        ${zipCode}      ${phone}        ${ssn}      ${username}     ${password}     ${repeatedPassword}
    login_page.Click register hyperlink
    register_page.Input firstname  ${firstName}
    register_page.Input lastname  ${lastName}
    register_page.Input address  ${address}
    register_page.Input city  ${city}
    register_page.Input state  ${state}
    register_page.Input zipcode  ${zipCode}
    register_page.Input phone  ${phone}
    register_page.Input ssn  ${ssn}
    register_page.Input username  ${username}
    register_page.Input password  ${password}
    register_page.Input confirm password  ${repeatedPassword}
    register_page.Click register button
    home_page.Verify user registered successful message
