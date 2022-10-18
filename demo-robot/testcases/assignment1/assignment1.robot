*** Settings ***
Library             RequestsLibrary
Library             Collections


*** Variables ***
${url}  https://petstore.swagger.io
${path}  /v2/pet/findByStatus?


*** Test Cases ***
Get Request Test
    Create Session  session_1  ${url}
    ${json_2}=   Create Dictionary  id=0 name=string
    ${json_1}=   Create Dictionary  id=9222968140497181000  category=&{json_2}
    ${response_1}=  Get On Session  session_1  ${path}  json=${json_1}
    Should Be Equal As Strings   ${response_1.status_code}    200