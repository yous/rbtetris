Feature: Tetrimino
  As a player who likes Tetris
  I want to be able to controll Tetriminos
  In order to keep survive in current game

  Scenario: Create a 'I' Tetrimino
    Given I have a 'I' Tetrimino
    Then the Tetrimino should have a info
    And it should have the color CYAN

  Scenario: Create a 'J' Tetrimino
    Given I have a 'J' Tetrimino
    Then the Tetrimino should have a info
    And it should have the color BLUE

  Scenario: Create a 'L' Tetrimino
    Given I have a 'L' Tetrimino
    Then the Tetrimino should have a info
    And it should have the color YELLOW

  Scenario: Create a 'O' Tetrimino
    Given I have a 'O' Tetrimino
    Then the Tetrimino should have a info
    And it should have the color WHITE

  Scenario: Create a 'S' Tetrimino
    Given I have a 'S' Tetrimino
    Then the Tetrimino should have a info
    And it should have the color GREEN

  Scenario: Create a 'T' Tetrimino
    Given I have a 'T' Tetrimino
    Then the Tetrimino should have a info
    And it should have the color MAGENTA

  Scenario: Create a 'Z' Tetrimino
    Given I have a 'Z' Tetrimino
    Then the Tetrimino should have a info
    And it should have the color RED
