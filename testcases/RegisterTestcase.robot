*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/LoginPageKeywords.robot
Resource        ../keywords/HomePageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome


*** Test Cases ***
As a user, I want to login success with valid credential
    when user register to future skill platform with ${email} and ${firstName} and ${lastName} and ${phoneNumber} and ${newPassword} and ${confirmPassword}    # robotcode: ignore
    Then future skill should display home page and display message as "OTP"