# FixNA2Download

## 1 Create the Automation

- Create a Screenshot of NA2's Download Error ( `cmd+shift+4` )

![](assets/images/ScreenShotNA2Error.png)

- Separate the `Refresh` button ( `cmd++` to Zoom in; `cmd+k` to Crop the selection )

![](assets/images/SeparateRefreshButton.png)

- Change the size to `50` percent ( This step is mandatory on a Mac with Retina Display otherwise Robot Framework can not recognize the Image on the Screen )

![](assets/images/AdjustSize.png)

![](assets/images/50Percent.png)

- Save Image to `assets/images/RefreshButton.png`

![](assets/images/RefreshButton.png)

- Create a new file `HandleRefreshButton.robot`

``` robot
*** Settings ***
Library SikuliLibrary

Test Setup  Add Image Path  assets/images
Test Teardown  Stop Remote Server

*** Test Cases ***
Handle Refresh Button
  Handle Refresh Button

*** Keywords ***
Handle Refresh Button
  Mouse Move  RefreshButton
```