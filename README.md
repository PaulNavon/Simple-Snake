# Simple-Snake

Welcome to a Simple Snake, a game working on a FPGA board.

--- 

## The Gameplay
You will start at the top left corner as a dark green square. At the top right, 
you will see a score counter which goes from 0 to 5.

The red circle is the apple you eat to get a point.
![img.png](README/StartGame.png)

When you eat the apple, it takes a second to update the game and for the apple to appear in another cell. 
![img.png](README/InGame.png)

This project was made using the ALTERA DE10-Lite FPGA board.
![img.png](README/DE10Lite.png)

As a game controller, the board needs at least 2 switches and an accelerometer:
- The first switch permits to put the game on break (the rightmost switch, SW0)
- The second one chooses the axis you will move on, verticaly or horizontaly (the leftmost switch, SW9).
- The accelerometer is used as a spirit level to give the direction to the square.

## How to play

In order to choose the way your square will move, you have to use the board as a spirit level.
You have to tilt the board on the side you want your square to go :
- Tilt towards you to make it go down
- Tilt outwards you to make it  go up
- Tilt on the left to make it go left
- Tilt on the right to make it go right

As we can't access the accelerometer on both axis at the same time, 
you change axis using switch SW9 ('0'/down => horizontal axis, '1'/up => vetical axis).

Another switch is implemented, SW0 is there to Pause/Resume the game ('0'/down => Resume, '1'/up => Pause).

## Rules

Eat the apple (red circle) with the snake (dark green square) to gain a point.
You win if you eat 5 apples.
The score will be automatically reset.

## Launch the game on your computer

As easy as it suggests :

1. Get Quartus Prime edition
2. Clone the repository
3. Compile the project
4. Upload the bitstream

And it's done ! Welcome to Snake FPGA Edition.

This project may also run with other boards which contain a VGA output and an accelerometer.
You will probably need to adjust parameters such as the board pin planner, a PLL generator and update the accelerometer description to match your board.

