# :satellite: MARS ROVER :satellite:

##ThoughtWorks Tech Assignment

For the next stage of the ThoughtWorks application process, I have been asked to complete the Mars Rover Kata, to demonstrate my current ability in web development and the accompanying skill areas. This document should be all you need to understand setup and control of a hypothetical mars rover.

##Problem (The Kata)

A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.

A rover’s position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.

In order to control a rover, NASA sends a simple string of letters. The possible letters are ‘L’, ‘R’ and ‘M’. ‘L’ and ‘R’ makes the rover spin 90 degrees left or right respectively, without moving from its current spot. ‘M’ means move forward one grid point, and maintain the same heading.

Assume that the square directly North from (x, y) is (x, y+1).

**Input:**

- The first line of input is the upper-right coordinates of the plateau, the lower-left coordinates are assumed to be 0,0.
- The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the rover’s position, and the second line is a series of instructions telling the rover how to explore the plateau.
- The position is made up of two integers and a letter separated by spaces, corresponding to the x and y co-ordinates and the rover’s orientation.
- Each rover will be finished sequentially, which means that the second rover won’t start to move until the first one has finished moving.

**Output:**

 The output for each rover should be its final co-ordinates and heading.

**Input and Output**

**Test Input:**

5 5

1 2 N

LMLMLMLMM

3 3 E

MMRMMRMRRM

**Expected Output:**

1 3 N

5 1 E

In the administration of our assessments, ThoughtWorks strives to provide an equal testing opportunity for all candidates. Therefore, we will provide reasonable adjustment to our standard test taking procedures for applicants who have a documented disability within the meaning of the Equality Act. Please let us know when we contact you to schedule the assessments if you require any reasonable adjustment to the standard test taking procedures.

Copyright 2012 ThoughtWorks, Inc


**Design**

Since this project is designed to demonstrate skills, and given that the majority of my development history has been in the Ruby programming language, Ruby has been chosen as the language to write this project in. Given that the kata has not asked for any record of the rovers actions to persist and there has not been any mention of a graphical user interface (GUI), the decision has been taken to not implement any database and to keep the program as a Command Line Application (CLI).

**Code Example**

##Setup

##Testing

##User Stories

Based on the problem laid out above, in order to break down the challenge, a number of user stories have been extracted. These user stories will form the basis on which the tests are written, the code will then be written in order to pass the minimum requirements of those tests.

**User Story 1**
```
As a NASA controller,
So that we can explore Mars,
We would like to interact with an online Mars Rover.
```

**User Story 2**
```
As NASA,
So that we can explore a particular part of Mars,
We would like to be able to land a Mars Rover.
```

**User Story 3**
```
As NASA,
So that we don't waste film,
We would like to be able to start and stop our camera from recording.
```

**User Story 4**
```
As NASA,
So that we can use the camera to get a good view of mars,
We would like to be able to navigate the rover.
```

##Author

[Joe Wroe](https://github.com/JoeWroe)
