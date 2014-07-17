Feature: Tetrimino
  As a player who likes Tetris
  I want to be able to controll Tetriminos
  In order to keep survive in current game

  Scenario: Create a Tetrimino
    Given I have a screen
    Given I have a Tetrimino
    Then the Tetrimino should have a color
