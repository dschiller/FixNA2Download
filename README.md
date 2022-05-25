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
```

- Install Robot Framework via `pip install robotframework`

- Install Sikuli Library via `pip install robotframework-SikuliLibrary`

- Enable Accessibility for the Terminal at **System Preferences** / **Security & Privacy** / **Accessibility** / **Terminal.app**

![](assets/images/SystemPreferences.png)

![](assets/images/SecurityAndPrivacy.png)

![](assets/images/EnableSettings.png)

![](assets/images/Accessibility.png)

![](assets/images/Terminal.app.png)

- Create a folder `results`

- Run the `.robot` script in the Terminal via `robot -d results HandleRefreshButton.robot` and focus the NA2 App ( `cmd+tab` )
