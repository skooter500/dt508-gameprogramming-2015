# DT508 Game Programming

Resources
---------
* [Webcourses](http://dit.ie/webcourses)
* [Slack](https://dt508-gameprogramming.slack.com/)
* [Processing](http://processing.org)
* [The Processing language reference](http://processing.org/reference/)
* [Learning Processing: A Beginner's Guide to Programming Images, Animation, and Interaction (Morgan Kaufmann Series in Computer Graphics)](http://http://www.learningprocessing.com/)
* [The Nature of Code](http://natureofcode.com/)
* [The git manual - read the first three chapters](http://git-scm.com/documentation)
* [A video tutorial all about git/github](https://www.youtube.com/watch?v=p_PGUltnB6w)
* [Games Fleadh](http://www.gamesfleadh.ie/)
* [The Imagine Cup](https://www.imaginecup.com/)

## Contact the lecturer
Email: bryan.duggan@dit.ie
Twitter: [@skooter500](http://twitter.com/skooter500)
Slack: https://dt508-gameprogramming.slack.com/

# Week 1
## Lecture
- [Introduction slides](https://onedrive.live.com/redir?resid=AB603D769EDBF24E!263972&authkey=!AK1asYNZOHgqEC0&ithint=file%2cpptx)
- [The program we wrote in class](processing/intro/intro.pde)
- [The contract for this course](http://1drv.ms/1DbmnG9)
- Procedurally generated minnowforms video:
	[![YouTube](http://img.youtube.com/vi/5G-PKD5GnlE/0.jpg)](https://www.youtube.com/watch?v=5G-PKD5GnlE)

- NILL - One of my game jam games. It uses lots of nice come sci stuff like Perlin noise, procedural generation and binary search

	[![YouTube](http://img.youtube.com/vi/RkReFavQbQo/0.jpg)](https://www.youtube.com/watch?v=RkReFavQbQo)

- [NILL Sourcecode](http://github.com/skooter500/NILL)

- Some Processing assignments from previous years: 

	[![YouTube](http://img.youtube.com/vi/S575a92AsuQ/0.jpg)](https://www.youtube.com/watch?v=S575a92AsuQ)

	[![YouTube](http://img.youtube.com/vi/wAEABphUJB8/0.jpg)](https://www.youtube.com/watch?v=wAEABphUJB8)

##Lab
### Learning Outcomes
- Sign up for the class Slack
- Become familiar with the syntax of Processing
- Become familiar with writing and running sketches in Processing

Firstly, go to https://dt508-gameprogramming.slack.com/ and sign up for the slack with your DIT email address. When you are signed up, send a little greeting to everyone on the #general channel. If you have a smartphone, you might want to install the Slack app. It's free. Also if you install the app, you will probably want to disable certain notifications, otherwise your phone will be buzzing every time someone posts anything. [Here is an article that explains how to do this](https://slack.zendesk.com/hc/en-us/articles/201649323-Channel-and-group-notification-preferences).

Take the time to look up the following methods in the [Processing language reference](http://processing.org/reference/ ) to make sure you are clear about the syntax and parameters:

* line
* ellipse
* rect
* background
* stroke
* fill
* size

Here are two shapes you can draw:

![Sketch](images/p1.png)

Try experimenting with colours!

Feel free to experiment with colour!  

When you are finished with these exercises, [log onto webcourses](http://dit.ie/webcourses) and complete the MCQ for this week

# Week 2
## Lecture
- [Processing sketch with a face that moves from left to right and back again using the if statement](processing/leftrightface)
- Data types, the if statement and dynamic sketches in Processing video (from last year)  

  [![YouTube](http://img.youtube.com/vi/Y0b9W3UJ2BU/0.jpg)](https://www.youtube.com/watch?v=Y0b9W3UJ2BU)

  - The best of this weeks videos (incomplete making the moving smiley face video)

 [![YouTube](http://img.youtube.com/vi/Wr_Ev0Xqh_U/0.jpg)](https://www.youtube.com/watch?v=Wr_Ev0Xqh_U)
 
## Lab
### Learning Outcomes
- Practice using variables in your sketches
- Practice using the if statement
- Practice constructing algorithms to solve problems

### Part 1
Take the smiley face program we wrote and modify it so that there are no hard-coded numbers used as parameters for any of the methods. Instead, replace them all with variables and offsets from variables. Also make the face always fill the full size of the Processing window, whatever that is set to. For example your sketch should fill the full window at 500 x500 and also at 1000 x 1000, so you have to calculate everything relative to the width and height of the window.

### Part 2
In the class we used the if statement to get the face to move from left top right across the screen and back again. Here is a [link to that sketch](processing/leftrightface). Try and modify that sketch so that the face starts in the middle of the screen and then moves around the outside of the screen. This is a little trickey to get right. You should < > in your if statement and if the face goes beyond the bounds of the window, you need to move it back inside the window. Here is a video of what your sketch should look like:

[![YouTube](http://img.youtube.com/vi/2L1VvonXAg8/0.jpg)](https://www.youtube.com/watch?v=2L1VvonXAg8)

Login to Webcourses and do the MCQ for today

- [Solution to Part 1 submitted by Tomas Ruiz Penin](processing/stretchface1)
- [Solution to part 2](processing/facearoundthewall)

# Week 3
## Lecture
- Variables & trigonometry:

[![YouTube](http://img.youtube.com/vi/xkK5C7Xfx80/0.jpg)](https://www.youtube.com/watch?v=xkK5C7Xfx80)

	- [The trigonometry problem we worked on in the class](processing/kitetriangle) 

## Lab
- [Try solving some of these trigonometry problems on pen and paper](http://www.tippcityschools.com/cms/lib6/OH01000855/Centricity/Domain/111/Acc%20Geom%20eDay%201.pdf)

- Solve this trigonometry problem using pen and paper FIRST. Write a Processing sketch to solve it and draw the problem. In your solution, print the valuse for theta, o, a, and h to the screen:

	A person is standing 200m from the base of a building looking up at the top of the building through a telescope. The telescope is tilted 48 degrees off the ground. How high is the building?
	
	Important
	
	- Declare varibles for all the values you need in order to solve this problem
	- Assign values to the variables that you know
	- Calculate the values that you don't know
	- Dont forget to convert to radians before you use sin, cos, tan methods  (use the method radians)

Advanced
- Use the mouse to vary the distance of the base of the building
	
Upload images of your sketches to the slack. Log onto webcourses and complete today's MCQ
