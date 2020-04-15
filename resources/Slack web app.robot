*** Settings ***
Library           RanorexLibrary.py    ${RanorexRoot}

*** Variables ***
${RanorexRoot}                  %{programfiles(x86)}\\Ranorex\\Studio\\Bin
${Slack Web App Main Page}      /dom[@domain='app.slack.com']
${Search field}                 ${Slack Web App Main Page}//span[@innertext~'Search' and @class='p-top_nav__search__text']
${Message field}                ${Slack Web App Main Page}//div[@class~'ql-editor']

*** Keywords ***
Select the ${channel name} channel
    click           ${Search field}
    key_shortcut    {Control down}{aKey}{Control up}
    key_sequence    ${Search field}  ${channel name}
    key_sequence    ${Search field}  {Down}
    key_sequence    ${Search field}  {Return}
    wait_for        ${Message field}
Enter the remembered fact into the text field
    log             ${cat fact}
    click           ${Message field}
    key_shortcut    {Control down}{aKey}{Control up}
    key_sequence    ${Message field}  ${cat fact}
Press Enter to send
    key_sequence    ${Message field}  {Return}