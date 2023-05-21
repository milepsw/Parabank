*** Settings ***
Resource       ${CURDIR}/../imports/import.resource
Suite Setup    component_keyword.Open browser  ${website["url"]}  ${browser["gc"]}

*** Test Cases ***
TC_015 Verify that registration is success when input all field with valid detail
    ${username}=        component_keyword.Username with current date
    register_features.Verify user can register successful  ${register["firstName"]}  ${register["lastName"]}  ${register["address"]}  ${register["city"]}  ${register["state"]}  ${register["zipCode"]}  ${register["phone"]}  ${register["ssn"]}  ${username}  ${login["pass"]}  ${login["pass"]}