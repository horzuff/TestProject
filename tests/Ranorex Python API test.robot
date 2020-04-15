*** Settings ***
Library           RanorexLibrary.py    ${RanorexRoot}
Resource          Slack main page.robot
Resource          Slack web app.robot

*** Variables ***
${RanorexRoot}    %{programfiles(x86)}\\Ranorex\\Studio\\Bin
${baseURL}  https://cat-fact.herokuapp.com

*** Test Cases ***
Using Python to get a Cat Fact from a free API and then using Ranorex to open Slack and send that fact to the rotary channel
    Get a random cat fact
    Slack main page.Open slack.com in browser
    Slack main page.Select NiceProject community
    Slack web app.Select the rotary-ranorex-playground channel
    Slack web app.Enter the remembered fact into the text field
    Slack web app.Press Enter to send
    
*** Keywords ***
Get a random cat fact
    ${resp}=  Evaluate  json.loads(urllib2.urlopen('${baseURL}/facts/random').read())  modules=urllib2,json
    log  ${resp}
    log  ${resp['text']}
    set suite variable  ${cat fact}  ${resp['text']}