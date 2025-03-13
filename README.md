# Simple-Snake

Welcome to Simple Snake, a game running on an FPGA board.

--- 

## Gameplay

You'll start in the top left-hand corner as a dark green square.
At the top right, you'll see a score counter that goes from 0 to 5.

The red circle is the apple you eat to get a point.

<img src="README/StartGame.png" alt="Gameboard" width="50%" height="100%"/>

When you eat the apple, it takes a second for the game to refresh and for the apple to appear in another cell.

<img src="README/InGame.png" alt="Gameplay" width="50%" height="100%"/>

This project was developed using the ALTERA DE10-Lite FPGA board.

<img src="README/DE10Lite.png" alt="Altera Board - DE10-Lite" width="50%" height="100%"/>

The board requires two switches and an accelerometer (ADXL345):

- The first switch allows you to pause the game (the rightmost switch, SW0).
- The second switch lets you choose the axis of movement, either vertical or horizontal (the leftmost switch, SW9).
- The accelerometer functions like a spirit level, determining the direction in which the square moves based on the tilt
  of the controller.

## Context

This project involves the creation of a game on an FPGA, entirely designed and developed by myself.
The development was completed in just 5 days as part of my academic curriculum, serving as a bonus practical assignment
under FPGA.
This work was undertaken after my exam period, allowing me to apply the knowledge gained throughout my academic journey.

## How to play

To determine the direction in which your square will move, use the board as a spirit level. Tilt the board in the
direction you want the square to go:

- Tilt the board towards you to move the square down.
- Tilt the board away from you to move the square up.
- Tilt the board to the left to move the square left.
- Tilt the board to the right to move the square right.

Since the accelerometer cannot be accessed on both axes simultaneously, you can switch between axes using switch SW9:

- Set SW9 to '0' (down) for the horizontal axis.
- Set SW9 to '1' (up) for the vertical axis.

Additionally, switch SW0 is used to pause or resume the game:

- Set SW0 to '0' (down) to resume the game.
- Set SW0 to '1' (up) to pause the game.

## Rules

Guide the snake (dark green square) to eat the apple (red circle) to gain a point.
Win the game by eating 5 apples.
The score will automatically reset to 0 after winning.

## Launch the game on your board

To launch the game:

1. Obtain Quartus Prime edition.
2. Clone the repository.
3. Compile the project.
4. Upload the bitstream to a DE10-Lite board.
5. Connect a VGA cable from the board to a compatible screen.

That's it! Welcome to Snake FPGA Edition.

This project may also be compatible with other boards that have a VGA output and an accelerometer.
You may need to adjust parameters such as the board pin planner, PLL generator, and update the accelerometer description
to match your specific board.

---

## Technical Implementation and Design Considerations         

The DE10-Lite board features a VGA output. The VGA synchronization signals are directly supplied by the MAX 10 FPGA, and
a DAC using a resistor network generates the analog data signals (red, green, and blue). The associated schematic
supports standard VGA resolution (640x480 pixels, at 25 MHz).

<img src="README/VGA.png" alt="VGA" width="50%" height="100%"/>

There are 2 control signals for managing the visual output, along with 3 RGB signals.

We are aware that our display resolution is 640 by 480. However, the VGA signal is slightly larger to accommodate the
front porch, synchronization, back porch, and the addressable video bandwidth.

<img src="README/VGA_Management.png" alt="VGA_Management" width="50%" height="100%"/>

A 25 MHz clock divided by the number of pixels results in a screen refresh rate of approximately 60 Hz.

We opted for a 4 by 4 grid, resulting in a total of 16 rectangles. Given a resolution of 640 by 480, we decided to
create rectangles that are 160 pixels wide on the X-axis and 120 pixels high on the Y-axis.

By working directly with the VGA signal, we need to manually define the conditions for drawing and indirectly select
which pixels to draw under specific conditions. Creating our custom libraries (MY files) standardizes the handling of
repetitive shapes. The same approach applies to writing, as we need to define bitmaps. We chose to write characters with
a resolution of 20 by 20 pixels. Here is an example of a bitmap:

<img src="README/Bitmap_3.png" alt="Bitmap_3" width="50%" height="100%"/>

To enhance the user experience and allow control over movements (X-Y axis, orientation in degrees), we implemented a
clock division using a process instead of a PLL (due to the high division factor). This results in a frequency of 1 Hz,
or one movement per second.

The screen refreshes 60 times per second, while game actions occur once per second. This separation in the VHDL code
distinguishes actions based on the frequency in use.

In games, randomness is often a key element. We implemented a pseudo-random algorithm to assign a new position to the
apple when needed. However, due to the nature of pseudo-random algorithms, certain specific cases can reveal the
limitations of this approach.

For instance, even considering the player’s position, it may occasionally happen that the apple appears in the same
position where it was eaten, or it may seem like the apple is following the rectangle. This occurs due to the
mathematical constraints of our homemade randomness.

The RTL view should resemble this:
- PLL: The clock divider to achieve a 25 MHz clock.
- top: The block controlling the accelerometer and seven-segment display.
- SYNC: Where game functions and graphics are defined.

<img src="README/RTL.png" alt="RTL" width="90%" height="100%"/>



