# encoding: utf-8

module RbTetris
  # Public: Game pieces for Tetris.
  class Tetrimino
    # Public: Returns the Integer color constant of the Tetrimino.
    attr_reader :color

    # Public: Initialize a new Tetrimino. Initialize its color.
    def initialize
      @color = Term::Color.all.sample
    end
  end
end
