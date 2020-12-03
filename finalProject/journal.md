# Project Idea


### *Note that all videos of my project progress will be found in my README page!*

- I dont have the specifics of my project figured out yet, but I know that I want to use arduino to communicate to a game on processing. I want the communication to be both ways so that both arduino and processing are communicating with each other. The controls would be on arduino while feedback from the actual game would be communicated to different things connected to the arduino board. 
- I was thinking of creating a musical instrument of sorts, maybe one that switches between piano and drum notes.
- The first is a simple idea of having to hit the right notes on the processing screen 
-  Another idea is to incorporate the concept of a musical instrument with a simple game design so that the notes control the direction in which a character moves in a game... 

![](ProjectBrainstorm.jpeg)


## My Progress

#### November 27, 2020

- What I focused on today is designing my game on processing. 
- I started on figuring out the design I want for each of my screens (home, game, gameover) and then I worked on how to transition between them.
- Next, I worked on my music notes/ tiles, things like their position on the screen and making them appear at random positions.

#### November 28, 2020
- The next thing I worked on is trying to implement the controls and making the game actually work. 
- For today, I worked on making the game work specifically on processing, making sure that if specific keys are pressed it would work. I will work on transitioning into arduino in the coming days.
- I found that the best aproach I could take was to use boolean statements since they can only be true or false. [Daniel Shiffman's tutorials](https://www.youtube.com/watch?v=_NJqfZUQ3i4) were an easy way to better understand the concept and made it easier for me to implement them in my code. 

#### November 29, 2020
- Today I worked on trying ot build a communication between arduino and processing.
- The main thing I did is connecting 4 momentary switches, so that when one of them is pressed, the text appears through the println function.
- I still haven't figured out how to make the switches work in relation to game as I am still trying ot navigate the concept of communication but hopefully I will have it done within the next week. 

#### December 3, 2020
- The past few days I have been looking for different resources that could be helpful in helping me solve my issue with my buttons. 
- I found some [forums](https://forum.processing.org/two/discussion/11076/processing-arduino-buttons) (mostly people trying to debug their code) as well as youTube videos that helped me understand the concept of communications more clearly but I still haven't come up with a way to make my buttons work as controls. 
- To test whether my buttons worked with my notes, I made it so when a button is pressed, the tile corresponding with the button color would reset its y position to 0.
- It did thankfully work so the next step will hopefully be transitioning my processing controls onto the arduino.
- Another adjustement I made was the number of tiles. Initially, I wanted to have 6 tiles that corresponded to 3 buttons, so that each button corresponds to a color, as well as having a combination of 2 buttons that would correspond to another colored tile. I decided to scrap that idea for the time being and figure out the very basics of having one button linked to one color and make sure that works effectively. Once I have figured that out, maybe I can work on bringing back my previous idea (if I have time).
