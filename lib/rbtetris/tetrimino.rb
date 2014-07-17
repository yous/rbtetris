# encoding: utf-8

module RbTetris
  # Public: Game pieces for Tetris.
  class Tetrimino
    attr_accessor :color

    # Public: Initialize a new Tetrimino. Initialize its color.
    def initialize
      @color = Term::Color.all.sample
    end
  end
end
