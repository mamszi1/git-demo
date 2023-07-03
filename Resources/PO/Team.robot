*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${TEAM_HEADER_LABEL} =    css=#team > div > div:nth-child(1) > div > h2
#//*[@id="team"]/div/div[1]/div/h2


*** Keywords ***
Verify Page Loaded
    wait until page contains element    ${TEAM_HEADER_LABEL}

Validate Page Contents
    #this fails in Chrome but passes in Edge
    #element text should be       ${TEAM_HEADER_LABEL}       Our Amazing Team

    ${ElementText} =    get text    ${TEAM_HEADER_LABEL}
    should be equal as strings    ${ElementText}        Our Amazing Team    ignore_case=true
