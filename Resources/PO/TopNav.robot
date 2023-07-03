*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${TOP_NAV_TEAM_LINK} =    //*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a


*** Keywords ***
Select "Team" Page
    #click link        Team
    click element      ${TOP_NAV_TEAM_LINK}
    Sleep              3s


