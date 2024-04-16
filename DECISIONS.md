# Design

The design of the app is very simple. The app has a single screen which is the welcome screen. The welcome screen has a text field where the user can enter the link to their CV. Once the user enters the link and submits it, the next screen shows a QR code which represents the link to the CV. The user can then show this QR code to another person who can scan it to get the link to the CV. The CV can be viewed and the link can be edited if needed from here again.

In terms of user experience I've made it so that the welcome screen's only visible during the first load of the app. Once the user enters the link and submits it, the app will remember the link and show the QR code screen on every subsequent load of the app. The user can always go back to the welcome screen by tapping on the "Change Link" button on the QR code screen.

The ultimate goal was to make the app simple and small as possible. After all it's just to share a link to a CV and not anything fancy.

# Implementation

1. No external or third party libraries were used. While I could very well have done so to make the process easier, it was to get a better understanding of the Swift itself and the iOS development environment. 

2. The second reason for the above is that the simple nature of the project simply did not require any external libraries.