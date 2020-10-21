# Midterm Project Journal

In general, my project is space related. The idea being that there is a spaceship at the bottom of the screen and the main objective is to avoid the "meteorites" falling out of the sky. 

#### October 18,2020
- Since I don't have a fixed idea for my game yet, I decided to work on the skeleton of the code. I worked on the details that related to the separate game screens; the home page, the game screen, and a way to restart the game without restarting the program itself.
- I have never attempted to work with multiple game screens so trying to figure out the correct way to use the if statements and what not was a bit confusing at first, but I eventually figured it out through trial and error and a bit of research. 
- I found some parts of [this video](https://www.youtube.com/watch?v=A6fnjLmYb8s) to be useful

#### October 20, 2020
- Today, I worked on emphasizing the space theme in my project by adding space related images as my background.
- I was also able to create an array to be able to have meteorites falling out of the sky at different speeds and locations.
- I used Daniel Shiffman's explanations of arrays as a [reference](https://www.youtube.com/watch?v=NptnmWvkbTw). 
- The one thing I can't seem to figure out is how to have new meteorites appear at new locations. At the moment, when a meteorite reaches the bottom of the screen, it just reappears at the top of the screen but from the same location and falls with the same speed. What I want to do is have new meteorites appear at different locations with different speeds but I can't seem to figure out how to do that.
- Another issue with the array (similar to the previous one) is that when the game is restarted, there aren't any new meteorites being generated, but rather a continuation from the previous game. For example, if the previous game ended with the meteorite in the middle of the screen, the new game will continue with that same meteorite in the middle of the screen (as well as the issues mentioned in the previous point).
- The next step will hopefully be tring to resolve that issue. 

#### October 21, 2020
- Today I worked on making my spaceship move using controls (keys) rather than moving through the position of mouseX, which is what it was previously.
- One of the problems I somewhat was able to resolve was the issue of new meteorites appearing during the game. While I was able to partially resolve it, the result is still not what I want it to be. I find that a lot of my "meteorites" keep appearing consecutively in the same general location and doesn't make the game all that exciting.
- I think the most challenging part for me is going to be when I have to figure out collisions and how that affects health  and score. At the moment, the game just continously runs with no way for it to end (or reach the game over screen).
- The next steps are going to be working on figuring out how to add the health feature as well as a way to lose/end the game. I also want to work more on the meteorites that I currently have and improve them. 
