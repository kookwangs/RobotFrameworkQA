*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${url}  https://www.saucedemo.com
${browser}          chrome

*** Keywords ***
Input Password And Confirm
    Input Text  name=password  secret_sauce
    Click Button  name=login-button
    Wait Until Page Contains  Products  5s

*** Test Cases ***
user1 redirect success
    Open Browser  ${url}  ${browser}
    Input Text  name=user-name  standard_user
    Input Password And Confirm

#I didn't use the user 2 in testing because it's just logged out user
#user2 redirect success
    #Open Browser  ${url}  ${browser}
    #Input Text  name=user-name  locked_out_user
    #Input Password And Confirm
    
user3 redirect success
    Open Browser  ${url}  ${browser}
    Input Text  name=user-name  problem_user
    Input Password And Confirm

user4 redirect success
    Open Browser  ${url}  ${browser}
    Input Text  name=user-name  performance_glitch_user
    Input Password And Confirm