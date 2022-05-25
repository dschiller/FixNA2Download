*** Settings ***
Library  SikuliLibrary

Suite Setup  Add Image Path  assets/images
Suite Teardown  Stop Remote Server

*** Test Cases ***
Handle Refresh Button
  Handle Refresh Button

*** Keywords ***
Handle Refresh Button
  FOR  ${i}  IN RANGE  999
    Wait for Image  RefreshButton  \  5000
    CLick  RefreshButton
    Sleep  1 
  END