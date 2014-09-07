# encoding: utf-8

module RbTetris
  # Game pieces for Tetris.
  class Tetrimino
    # Info of piece.
    class Info
      # Returns the Integer color of the Tetrimino.
      attr_reader :color

      # Initialize a Info. Initialize its color.
      #
      # color - The Integer color of Tetrimino.
      #
      # Examples
      #
      #   Info.new(Terminal::Color::BLACK)
      def initialize(color)
        @color = color
      end
    end

    I = Info.new(Terminal::Color::CYAN)
    J = Info.new(Terminal::Color::BLUE)
    L = Info.new(Terminal::Color::YELLOW)
    O = Info.new(Terminal::Color::WHITE)
    S = Info.new(Terminal::Color::GREEN)
    T = Info.new(Terminal::Color::MAGENTA)
    Z = Info.new(Terminal::Color::RED)
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
