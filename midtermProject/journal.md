# Midterm Project Journal

### Note that all screenshots/videos of the different game stages will be found in my README page!

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

#### October 23, 2020
- The first thing I did was make it so that my spaceship cannot go off screen and I used parts of [this video](https://www.youtube.com/watch?v=JV5XBmaQdIA) as a reference. 
- Second was try to figure out collisions. After watching [Daniel Shiffman's video](https://www.youtube.com/watch?v=uAfw-ko3kB8) I learned the basics of how to use the dist function and tried to implement it in my code. I tried multiple times and looked for more videos but still struggled a bit, so I descided to ask for help in our discord server. A peer helped me realize that I was on the right track but there were parts of my code that were missing. Fortunately they were easy additions. I haven't gone into the details of what happens between the objects interaction wise, I just used println("collisions") to confirm that it is infact working. 
- The next thing I want to work on, is the interaction between the objects. I want to implement a lives system so that everytime you are hit by a meteor you lose a life and the game is over after you've lost all your lives. 

#### October 24, 2020
- With help from our group on discord, I was able to resolve the glitch I was encountering everytime a new game was being started. I did that by creating a resetGame function that had all the information needed to stat a new fresh game.
- The next thing I worked on was the lives system, but I ran into a bit of trouble with it. For some reason everytime I tried to make it work, it would result in the lives disappearing all at once rather than one at a time. I spent a good amount of time on it but with no results, so I decided to leave it for tomorrow.
- The last thing I did was try to add a SciFi background sound to add to the theme of the game. I found my track at [this website](https://www.epidemicsound.com/music/featured/). The sound was a bit of a weird predicament, because I could load it just fine and I didn't run into any issues while playing the track itself, but the sound that was being played was very static and bad. 
- Those are the two things I want to work on tomorrow: the sound & the game lives

#### October 25, 2020
- This morning, I was finally able to figure out the game lives! At first, I was working with multiple if statements all with similar values which was what made the lives disappear all at once. What I should have done (and ended up doing) was have one if statement followed but else if statements so it isn't confusing and I could reach my desired outcome. 
- I added conditions so that the next game life does not disappear until the one before is not present. For example the second life does not disappear until the third life is gone. 
- I also did it so the meteorites would start from the top of the screen everytime a life is lost in order to avoid the glitch I ran into earlier. 
- Finally, I made it so everytime a life is lost, the screen flashes red as a warning to let you know that you have just lost a life. 

#### October 26, 2020
- I fixed the issue with sound. The way that I had it written in my draw function meant that it would play over and over again and that was what made it sound bad. With help from the discord server, I figured out how to make it work in draw, but later found that I prefered it in setup. I wanted it to be playing at all times anyways (regardless of the screen it was on), so that seemed like the more logical approach.
- I also added an option where you can mute/unmute the music in case you prefer to play without the background music.
- The last thing I did was just add finishing touches to my project: adding some images for design purposes, making sure my code was commented well, etc...
