# One Car Elevator

## About
This is a simple repo to practice some basic Ruby.  TDD (using RSpec) is being used to develop the code.  

## Assumptions
- The elevator serves a building of 8 floors
- At the bottom floor, the elevator can only go up (the only button outside the elevator is the up button).
- At the top floor, the elevator can only go down (the only button outside the elevator is the down button).
- There are call buttons (the ones outside the elevator), and floor buttons (the ones inside the elevator).
- The buttons have two components: the floor number, and a direction.
- Calls are answered in the order in which they are received - unless an incoming call can be answered while answering the present call.
- The elevator returns to the first floor when it is done and has no more calls to answer.
- If you are in the elevator traveling in one direction and push a button to go in the other direction, that new call is added to the queue of calls.
