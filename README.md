# Nyc Times Headline App

A proof of concept built on flutter for ios and android. 

###Install App for Android device.
- Install the demo.apk onto any android device.
- Go to settings -> Security & allow Unknown Sources.
- Apk can be found in demo/demo_app.apk. 
- Download or copy apk to device and tap to start the installation process. 
- After Installation, app should appear in your app gallery with the name "Nyc Times".

###Install App for iOS device.
iOS prohibits installation of app from unknown sources other than debugging from computer/ directly from appstore or testfight. 
App ipa cannot be installed unless via IDE 

###Run App by IDE.
- Clone project repository
- Install Flutter dependencies
- Connect android/ios device to computer.
- For Android (Enable USB Debugging) 
- For iOS (Trust Device).
- Select Device to install app from and run to install app on said device.


##Run Test
Tests can be found in the Test folder of the main directory. 

- Test can be run by running the following commands 
- flutter test --coverage. (Runs the test and generates test coverage)
- genhtml coverage/lcov.info -o coverage/html (Converts test coverage to html)



## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
