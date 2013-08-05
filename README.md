Stanford iTunesU Winter 2013 - Coding Together, Developing-iPhone-and-iPad-Apps
===============================

####Overview - Homework Assignment #0

Make each flip draw a new card (instead of showing A♣ all the time).

####Solution

This project takes the model files from the first lecture (Card, PlayingCard, PlayingCardDeck) and
adds code to the GameCardViewController to draw a random card every time you click on the card button. 

Additions:

1. I only increment the flipCount when the button is selected
2. When we are out of cards, I do the following:

    2a. set the flipCount to 0 and set the selected state to NO.
    
    2b. set my PlayingCardDeck property to nil
    
    This allows for a new set of random cards to draw from without having to run the program again.
    
####Environment

iPhone 6.1 Simulator

####Screenshots

![screenshot](http://geeksweep.files.wordpress.com/2011/08/homework0_1.png)

![screenshot](http://geeksweep.files.wordpress.com/2011/08/homework0_2.png)

![screenshot](http://geeksweep.files.wordpress.com/2011/08/homework0_3.png)




