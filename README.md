# Traffic Light System
An example of a custom traffic light component with animations and logic inspired by a real traffic light.
Developed entirely natively using Swift and SwiftUI.

![Demo](demo.gif)

The idea was to create a traffic light system.

✅ The app consists of 2 screens:

First Screen:
- ✅ There is a single text view prompting the user to enter their car model.
- ✅ A "Start Driving" button transitions to the second screen.
- ✅ Validation ensures that the car model has a minimum length of 3 characters.
- ✅ The car model name is then passed to the second screen.

Second Screen:
- ✅ The car model is displayed at the top.
- ✅ There are three circles aligned vertically: Red, Yellow, and Green.
- ✅ The color intensity of the circles changes based on the active traffic light.
- ✅ They mimic a real traffic light sequence:
    RED – 4 seconds bright
    GREEN – 4 seconds bright
    ORANGE – 1 second bright
- ✅ The lights quickly fade when turning on or off.
- ✅ This follows the classic traffic light sequence: Green → Yellow → Red, Red → Yellow → Green.

## Installation
The project does not require additional installation, as no dependency manager is currently used.

## Build
No additional setup is needed. Build project using Xcode.

## Technologies
* Swift
* SwiftUI

## Versions
* Xcode 15.0 (latest)
* Swift 5.9.0 (latest)

## Branches
GitFlow is strictly enforced on this repository. [GitFlow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)

### Branch overview
* master
* develop
* feature/name
* hotfix/name

### Git Flow:
feature -> develop -> master

## License
Copyright © August 24, 2025 Konstantin Stolyarenko. All rights reserved.
