# encoding: utf-8

module RbTetris
  # Public: Game pieces for Tetris.
  class Tetrimino
    # Internal: Shape of piece.
    class Shape
      # Public: Returns the Integer color of the Tetrimino.
      attr_reader :color

      # Public: Initialize a Shape. Initialize its color.
      #
      # color - The Integer color of Tetrimino.
      #
      # Examples
      #
      #   Shape.new(Term::Color::BLACK)
      def initialize(color)
        @color = color
      end
    end

    public

    I = Shape.new(Term::Color::CYAN)
    J = Shape.new(Term::Color::BLUE)
    L = Shape.new(Term::Color::YELLOW)
    O = Shape.new(Term::Color::WHITE)
    S = Shape.new(Term::Color::GREEN)
    T = Shape.new(Term::Color::MAGENTA)
    Z = Shape.new(Term::Color::RED)
    @shapes = [I, J, L, O, S, T, Z].to_a.freeze

    class << self
      # Public: Returns the Array of Shapes for Tetrimino.
      attr_reader :shapes
    end

    # Public: Returns the Shape of Tetrimino.
    attr_reader :shape

    # Public: Initialize a new Tetrimino. Initialize its shape.
    #
    # shape - The Shape one of shapes of Tetrimino.
    #
    # Examples
    #
    #   Tetrimino.new(Tetrimino::I)
    def initialize(shape)
      @shape = shape
    end
  end
end
