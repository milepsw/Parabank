*** Settings ***
Resource       ${CURDIR}/../imports/import.resource
Suite Setup    component_keyword.Open browser  ${website["url"]}  ${browser["gc"]}

*** Test Cases ***
TC_016 Verify that the registered user can log in after successful registration
    ${username}=        component_keyword.Username with current date
    register_features.Verify user can register successful  ${register["firstName"]}  ${register["lastName"]}  ${register["address"]}  ${register["city"]}  ${register["state"]}  ${register["zipCode"]}  ${register["phone"]}  ${register["ssn"]}  ${username}  ${login["pass"]}  ${login["pass"]}
    home_page.Click Log out
    login_features.Login successful  ${username}  ${login["pass"]}
    home_page.Verify login successful with full name  ${register["firstName"]}  ${register["lastName"]}