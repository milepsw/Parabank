*** Settings ***
Resource       ${CURDIR}/../imports/import.resource
Suite Setup    component_keyword.Open browser  ${website["url"]}  ${browser["gc"]}

*** Test Cases ***
TC_015 Verify that registration is success when input all field with valid detail
    ${current_date}=    Get Current Date    result_format=%Y%m%d%H%M%S
    ${login.user.today}=    Catenate    ${login["user"]}${current_date}
    register_features.Verify user can register successful  ${register["firstName"]}  ${register["lastName"]}  ${register["address"]}  ${register["city"]}  ${register["state"]}  ${register["zipCode"]}  ${register["phone"]}  ${register["ssn"]}  ${login.user.today}  ${login["pass"]}  ${login["pass"]}