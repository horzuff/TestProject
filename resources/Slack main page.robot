*** Settings ***
Library           RanorexLibrary.py    ${RanorexRoot}
Resource          Slack web app.robot

*** Variables ***
${RanorexRoot}          %{programfiles(x86)}\\Ranorex\\Studio\\Bin
${Slack main page}      /dom[@domain='slack.com']
${Launch Slack button}  ${Slack main page}//button[#'nav_work_btn']
${Select NiceProject button}  ${Slack main page}//div[@class~'dropdown']//a[@href>'https://nice-project.slack.com']

*** Keywords ***
Open ${address} in browser
    start_browser  ${address}  Chrome  --new-window  False  True  False  False  False
    wait_for  ${Launch Slack button}

Select NiceProject community
    click       ${Launch Slack button}
    click       ${Select NiceProject button}
    wait_for    ${Search field}