Feature: Tetrimino
  As a player who likes Tetris
  I want to be able to controll Tetriminos
  In order to keep survive in current game

  Scenario: Create a 'I' Tetrimino
    Given I have a 'I' shaped Tetrimino
    Then the Tetrimino should have a shape
    And the shape should have the color CYAN

  Scenario: Create a 'J' Tetrimino
    Given I have a 'J' shaped Tetrimino
    Then the Tetrimino should have a shape
    And the shape should have the color BLUE

  Scenario: Create a 'L' Tetrimino
    Given I have a 'L' shaped Tetrimino
    Then the Tetrimino should have a shape
    And the shape should have the color YELLOW

  Scenario: Create a 'O' Tetrimino
    Given I have a 'O' shaped Tetrimino
    Then the Tetrimino should have a shape
    And the shape should have the color WHITE

  Scenario: Create a 'S' Tetrimino
    Given I have a 'S' shaped Tetrimino
    Then the Tetrimino should have a shape
    And the shape should have the color GREEN

  Scenario: Create a 'T' Tetrimino
    Given I have a 'T' shaped Tetrimino
    Then the Tetrimino should have a shape
    And the shape should have the color MAGENTA

  Scenario: Create a 'Z' Tetrimino
    Given I have a 'Z' shaped Tetrimino
    Then the Tetrimino should have a shape
    And the shape should have the color RED
