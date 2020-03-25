*** Settings ***
Library       C:/Python/Lib/site-packages/SeleniumLibrary
Library       DebugLibrary

*** Variables ***

*** Test Cases ***
github 登入流程
    [Documentation]  驗證github登入流程
    Open Browser  https://github.com/  Chrome
    Set Window Size	 1200  800
    Wait Until Element Is Visible  //a[contains(@href,'login')]
    Click Element  //a[contains(@href,'login')]
    Check Login page elements
    Login github  ${gitAccount}  ${gitPassword}
    Check Login successed
    Sleep  3s
    Close Browser

*** Keywords ***
My Keyword
    [Arguments]  ${key}
    Should Be Equal  ${key}  Hello, world!

Check Login page elements
    Wait Until Element Is Visible  //h1[contains(text(),'Sign in to GitHub')]
    Wait Until Element Is Visible  //input[@name='login']
    Wait Until Element Is Visible  //input[@name='password']
    Wait Until Element Is Visible  //input[@name='commit']

Login github
    [Arguments]  ${Account}  ${Password}
    Input Text      //input[@name='login']     ${Account}
    Input Password  //input[@name='password']  ${Password}
    Click Element  //input[@name='commit']

Check Login successed
    Wait Until Element Is Visible  //header/div[7]/details/summary
    Click Element                  //header/div[7]/details/summary
    Wait Until Element Is Visible  //header//a/strong[contains(.,"${gitUserName}")]
    Click Element                  //header/div[7]/details/details-menu/div[1]/a
    Wait Until Element Is Visible  //span[@itemprop="additionalName"][contains(text(),"${gitUserName}")]