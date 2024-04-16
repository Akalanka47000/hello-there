# Project Name -  Hello There
# Student Id - IT21072642
# Student Name - G.D.A.K. Perera

#### 01. Brief Description of Project

Just a simple application which you can use like a business card to share your CV with a single QR scan. 

The primary motivation for an app like this is for those who have their CVs in a place like a Google Drive or a Dropbox and want to share it with someone else in a quick and easy way.

#### 02. Users of the System - Anyone, though mostly will be students

#### 03. What is unique about your solution - It's a simple solution to a simple problem which I faced myself. I had my CV in a Google Drive and wanted to share it with someone else. I had to go through the process of opening the Google Drive app, finding the file and then sharing it. There probably are other solutions out there but I simply wanted to make my own.

#### 04. Briefly document the functionality of the screens you have (Include screen shots of images)

1. Enter your CV link in the input field at the welcome screen.

2. Show another person the QR code that appears on the screen from this point on once you open the app at any time

<br/>

<img width="150" src="https://github.com/Akalanka47000/hello-there/assets/73662613/4e688664-8873-437f-982a-91be54eff323" />
&nbsp;
<img width="150" src="https://github.com/Akalanka47000/hello-there/assets/73662613/e8c4fbb5-3b69-481e-8d3a-464cde2c0cfd" />

<br/>  

#### 05. Give examples of best practices used when writing code

1. The files are organized into folders based on their purpose
    - controllers
        - Handles the logic of the app
    - entities
        - Contains the data classes
    - -persistance
        - Contains the core data model
    - utils
        - Contains a utility function to get the user data from the core data model

2. I've made sure to properly use `let` and `var` to ensure that the variables are immutable when needed and mutable when needed.

#### 06. UI Components used

1. A Navigation Controller to navigate between the two screens
2. A Text Field to enter the link to the CV
3. A Button to submit the link
4. A Button to change the link
5. An Image View to show the QR code
6. A button to open the link in a browser

#### 07. Testing carried out

No testing was carried out in terms of unit testing or UI testing. The app was tested manually on the simulator to ensure that the app was working as expected. The generated QR code was scanned using a QR code scanner app to ensure that the link was being generated correctly. The link was then opened in a browser to ensure that the link was working correctly.

#### 08. Documentation 

(a) Design Choices

The design of the app is very simple. The app has a single screen which is the welcome screen. The welcome screen has a text field where the user can enter the link to their CV. Once the user enters the link and submits it, the next screen shows a QR code which represents the link to the CV. The user can then show this QR code to another person who can scan it to get the link to the CV. The CV can be viewed and the link can be edited if needed from here again.

In terms of user experience I've made it so that the welcome screen's only visible during the first load of the app. Once the user enters the link and submits it, the app will remember the link and show the QR code screen on every subsequent load of the app. The user can always go back to the welcome screen by tapping on the "Change Link" button on the QR code screen.

The ultimate goal was to make the app simple and small as possible. After all it's just to share a link to a CV and not anything fancy.

(b) Implementation Decisions

1. No external or third party libraries were used. While I could very well have done so to make the process easier, it was to get a better understanding of the Swift itself and the iOS development environment. 

2. The second reason for the above is that the simple nature of the project simply did not require any external libraries.

(c) Challenges

1. First project written in Swift for me

2. Differences in the XCode environment when compared to a traditional IDE did throw me off a bit

3. Once the gist of the project was written and was in a working state, I decided to do a bit of refactoring to make things a bit more organized which broke things again. Took me a while to notice but it had been a bug in an object instantiation that was causing the crash while for sometime I was under the assumption that it was the manually renaming of the files and the core data model which made the editor go haywire.

#### 09. Reflection

Probably I wouldve started off with a few algorithmic problems in Swift before jumping into the project. The project was simple but the learning curve was steep for me as I had to learn Swift as well as the XCode environment.
  