# encoding: utf-8

module RbTetris
  # Game pieces for Tetris.
  class Tetrimino
    # Info of piece. Contains its color and shape.
    class Info
      # Returns the Integer color of the Tetrimino.
      attr_reader :color

      # Returns the Array of an Array of Boolean shape of the Tetrimino.
      attr_reader :shape

      # Initialize a Info. Get color and shape of the piece.
      #
      # color - The Integer color of Tetrimino.
      # shape - The Array of an Array of Boolean to indicate its shape.
      #
      # Examples
      #
      #   Info.new(Terminal::Color::BLACK,
      #            [[true, true, true],
      #             [false, false, true]])
      def initialize(color, shape)
        @color = color
        @shape = shape
      end
    end

    I = Info.new(Terminal::Color::CYAN, [[true, true, true, true]])
    J = Info.new(Terminal::Color::BLUE, [[true, true, true],
                                         [false, false, true]])
    L = Info.new(Terminal::Color::YELLOW, [[true, true, true],
                                           [true, false, false]])
    O = Info.new(Terminal::Color::WHITE, [[true, true],
                                          [true, true]])
    S = Info.new(Terminal::Color::GREEN, [[false, true, true],
                                          [true, true, false]])
    T = Info.new(Terminal::Color::MAGENTA, [[true, true, true],
                                            [false, true, false]])
    Z = Info.new(Terminal::Color::RED, [[true, true, false],
                                        [false, true, true]])
    @infos = [I, J, L, O, S, T, Z].to_a.freeze

    class << self
      # Returns the Array of Infos for Tetrimino.
      attr_reader :infos
    end

    # Returns the Info of Tetrimino.
    attr_reader :info

    # Initialize a new Tetrimino. Initialize its shape.
    #
    # info - The Info one of infos of Tetrimino.
    #
    # Examples
    #
    #   Tetrimino.new(Tetrimino::I)
    def initialize(info)
      @info = info
    end
  end
end
