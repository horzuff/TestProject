*** Settings ***
${baseURL}  https://cat-fact.herokuapp.com

*** Test Case ***
Using Python to get a Cat Fact from a free API and then using Ranorex 
to open Slack and send that fact to the rotary channel
    Send a GET request to the Cat Facts API found under ${baseURL}/facts
    Receive the response, check the response status and remember the received fact
    Open Slack
    Check that the community is NiceProject
    Select the #rotary_ranorex_playground channel
    Enter the remembered fact into the text field
    Press Enter to send

*** Keywords ***

Send a GET request to the Cat Facts API

    No operation

Receive the response, check the response status and remember the received fact

    No operation

Open Slack

    No operation

Check that the community is NiceProject

    No operation

Select the #rotary_ranorex_playground channel

    No operation

Enter the remembered fact into the text field

    No operation

Press Enter to send

    No operation