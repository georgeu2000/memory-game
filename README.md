# To run specs:

`rspec`

# Engineering Homework Assignment - Memory
The purpose of this exercise is to get a gauge of how you work, build, and communicate through your code in the context of a project with features and requirements. 

*Note: This task should no longer than 1 work day to complete.*

## Instructions:
We’re looking for of your best work in implementing a solution for the exercise below. Feel free to use whatever technologies you most feel comfortable with. We are a React shop on the front end so bonus points if you build it w/ React! Submit the code as a PR, or through a public repo. We should be able to  "play" the game in the browser. If any setup steps are need for us to test the solution (`npm install`, etc), please include instructions.

### Main Requirement
Build an interactive application that let’s a single player match sets of 2 cards in a matching game.
- The game consists of a regular 52 card deck
- To start a game, the cards are randomly shuffled and placed on a game board
- A user can:
  - turn cards over
  - choose 2 cards per “turn” from the board
    - if the card values match (ignoring suit), the cards are removed from the game board
    - if not, cards are returned to the game board in their previous positions
  - view successfully matched pairs of cards
  - can count how many matched pairs they have found
- Other requirements
  - The cards on the board maintain their initial location on the board when other cards are removed
  - Game completes when all pairs have been found

### Extra Credit
Integrate a 2 player turn based system with a “computer” player.
- The game can distinguish between the turns of two players
- The game keeps a count of the matched pairs for each player
- A single user’s turn may continue if they successfully match a pair
- The computer can:
  - select cards from the board
  - “remember” the values of cards that have previously turned over
  - choose cards off the board based upon it’s knowledge of the board