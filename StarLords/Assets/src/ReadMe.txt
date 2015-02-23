To Keep a structured workflow, cards must be created in an easily repeatable manner.

A Config File of sorts will be needed to Maintain the Cards the User Currently Has.

The File will be saved to in Binary Format. 

Parsing will occur as such:
-Comma Seperated

The Number of Decks a User can make is infinite. So for now
""
Cards Owned : Card 1, Card 2, Card 3, Card 4.

Deck : Card 1, Card 2, Card 3,

Deck : Card 1, Card 2, Card 3,

Deck :
"




Use Pseudo Grid Setup

A Station is a "Blob" the Blobs shape is determined by whats inside it.

Each Tile/Card has an effect and a Cost. 

The tiles will be represented as simple Squares, and units as mini squares

Thruster cards allow the blob to move through space closer and farther from Asteroids which are used for metal harvesting.

The question is, how to offset the blob? (Iterate through All connected nodes an increment via Vector?)





Tiles:
Solar Panel 	- Provides + 1 Energy,
HydroPonic 		- Provides + 1 Food,
HarvestorDock  	- Converts up to 5 Blips to Harvestors
Sleep Pod 		- Increases Pop size by 5




Goal:
While you play Scifi-Tetris, your opponent is doing the same


Logic, Cards have the necessary information for both
PrePlay (in the deck/hand) and in play (an actual station with animatedd objects)




Game Mechanics:

A deck consisting of x Cards.

5 cards are drawn into the hand at the start

1 Card is drawn every X seconds (unless modified) (10sec?)


2 Cards are placed by default (Fusion Heart, Cryobeds)

//Fusion Heart is a unique card which functions as a
//storage hybrid, solar panel, and fusion core.


KEEP IN MIND later in the game, station nodes should be able to be swapped.
Hash table handles this nicely, but an animation will need to occur anyways.



The player plays the game by placing the cards down, manipulating worker distribution, and when available moving the space station (yes ikr).


Step 1: 
	Hand: Create positioning code for cards/tiles drawn.

Step 2: DONE	
DONE	Place the start tile in world space,
DONE	place its neighbour using the equiv of get neighbours

Step 3: 
DONE	Add mouse code to draw a vector to the target area
	Add mouse code to select/deselect and play cards from the hand onto the field.

Step 4:
	Add all tiles which were conjured up to now. as 
	real gameobjects within blender.

Step 5: 
	Associate the tiles with the objects

Step 6: 
	Peeps, for now ignore pathfinding and collision.
	Build Peeps - Move to location, start building.

Step 7:
	Create more cards and tiles to place in the game.

Step 8:
	Eventually after step 7, save/load, and design the order in which 
	players unlock cards.

	IE primitive deck + exp. packs added the more the game is played, 
	toggling exp packs on and off alter how a particular game will pan out.
