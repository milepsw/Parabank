*** Keywords ***
Open browser
    [Arguments]     ${url}  ${browser}
    Seleniumlibrary.Open browser                    url=${url}                    browser=${browser}
    ...    options=add_experimental_option("detach", True)
    Seleniumlibrary.Maximize Browser Window

Click element when ready
    [Arguments]     ${xpath}
    Seleniumlibrary.Wait until element is visible       ${xpath}
    Seleniumlibrary.Click element       ${xpath}

Input element when ready
    [Arguments]     ${xpath}    ${text}
    Seleniumlibrary.Wait until element is visible       ${xpath}
    Seleniumlibrary.Input text       ${xpath}       ${text}

Username with current date
    ${current_date}=    Get Current Date    result_format=%Y%m%d%H%M%S
    ${username}=    Catenate    ${login["user"]}${current_date}
    [Return]    ${username}