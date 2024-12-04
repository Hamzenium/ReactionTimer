# Reaction Timer Project

## Demonstration
Watch a live demonstration of the Reaction Timer project here:  
[Reaction Timer Demonstration](https://www.youtube.com/watch?v=WiPR4ABhM4s)

## Introduction
The **Reaction Timer** is a hardware-based system designed to measure user reaction times with high precision. It dynamically tracks the best (minimum) reaction time and displays results on a seven-segment display. Built entirely in Verilog, this project demonstrates the application of digital logic principles, including Finite State Machines (FSM), Binary-Coded Decimal (BCD) counters, and Linear Feedback Shift Registers (LFSR). 

This project is suitable for:
- Educational tools for digital design concepts.
- Reaction-based games.
- Timing systems in research environments.

## Features
- **Reaction Time Measurement**:
  - Measures time elapsed between a start signal and a button press.
  - Generates random delays using an LFSR to ensure unpredictability.
  
- **High Score Tracking**:
  - Dynamically records and updates the lowest reaction time.
  - Displays the high score to encourage user improvement.

- **Dynamic Seven-Segment Display**:
  - Displays messages such as "GO!" and results after each round.
  - Utilizes six seven-segment displays for reaction times and high scores.

- **Finite State Machine (FSM)**:
  - Manages states like idle, timing, and result display.
  - Provides seamless transitions and error-free operation.

- **Clock Divider**:
  - Reduces clock frequency for precise timing and efficient operation.

## System Design
The project follows a modular architecture with individual Verilog modules for each functionality.

### Key Modules
1. **FSM Module**:
   - Handles state transitions and generates control signals.

2. **Countdown Timer Module**:
   - Counts down from a randomly initialized value to measure reaction time.
   - Outputs the reaction time for display.

3. **High Score Module**:
   - Compares current reaction time with the high score.
   - Updates the high score dynamically if needed.

4. **Display Driver**:
   - Converts BCD values to seven-segment signals.
   - Displays dynamic messages such as "GO!" and "BEST".

5. **LFSR (Random Delay Generator)**:
   - Generates random delays for the countdown timer.
   - Adds fairness and engagement to the system.

### FSM States
- **Idle State**: Waits for user input.
- **Random Delay State**: Introduces a randomized waiting time.
- **Timing State**: Measures reaction time.
- **Result Display State**: Shows reaction time and high score.

### Seven-Segment Display
- Displays messages and results dynamically.
- Uses binary-to-BCD conversion for efficient representation.

## Key Parameters
- **Clock Divider**: Scales down the clock frequency for practical timing resolution.
- **High Score Tracking**: Ensures users can view and improve upon their best reaction times.

## Conclusion
The **Reaction Timer Project** effectively integrates digital design concepts with real-time user interaction. It serves as both an educational tool and a practical application for reaction-based timing systems. With precise timing, dynamic high score tracking, and user-friendly feedback, this project highlights the flexibility of digital hardware design.
