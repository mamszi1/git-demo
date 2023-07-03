*** Settings ***
Documentation    What this suite of tests does
Resource        ../Resources/FrontOfficeApp.robot
Resource        ../Resources/CommonWeb.robot

Test Setup      Begin Web Test
Test Teardown   End Web Test

#   robot -d C:/development/GitLab/robot-scripts/front-office/Results front-office-1/tests/Front_Office.robot

*** Variables ***
${BROWSER} =    edge
${URL} =    https://automationplayground.com/front-office/

*** Test Cases ***
Should be able to acces "Team" page
    [Documentation]    This is test 1
    [Tags]    test1
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page



"Team" page should match requirements
    [Documentation]    This is test 2
    [Tags]    test2
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page

