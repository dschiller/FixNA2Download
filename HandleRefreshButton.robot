*** Settings ***
Library  SikuliLibrary

Suite Setup  Add Image Path  assets/images
Suite Teardown  Stop Remote Server

*** Test Cases ***
Handle Refresh Button
  Handle Refresh Button

*** Keywords ***
Handle Refresh Button
  Mouse Move  RefreshButton