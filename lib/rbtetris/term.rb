# encoding: utf-8
require "ncursesw"

module RbTetris
  # Public: Terminal operations. Must call terminate before the termination of
  # program.
  #
  # Examples
  #
  #   begin
  #     term = Term.new
  #     # Do something.
  #   ensure
  #     term.terminate
  #   end
  class Term
    # Public: Colors used in Ncurses.
    module Color
      BLACK = 0
      RED = 1
      GREEN = 2
      YELLOW = 3
      BLUE = 4
      MAGENTA = 5
      CYAN = 6
      WHITE = 7
      @all = (BLACK..WHITE).to_a.freeze

      class << self
        # Public: Returns the Array of Integer colors available on terminal.
        attr_reader :all
      end
    end

    # Public: Initialize a new Term. Initialize color pairs if Ncurses has
    # colors.
    def initialize
      Ncurses.initscr
      initialize_color if Ncurses.has_colors?
    end

    # Public: Terminate Ncurses. Must be called before the termination of
    # program.
    #
    # Examples
    #
    #   begin
    #     term = Term.new
    #     # Do something.
    #   ensure
    #     term.terminate
    #   end
    #
    # Returns nothing.
    def terminate
      Ncurses.endwin
    end

    private

    # Internal: Initialize color pairs for Ncurses.
    #
    # Returns nothing.
    def initialize_color
      Ncurses.start_color
      [
        [Color::RED, Ncurses::COLOR_RED],
        [Color::GREEN, Ncurses::COLOR_GREEN],
        [Color::YELLOW, Ncurses::COLOR_YELLOW],
        [Color::BLUE, Ncurses::COLOR_BLUE],
        [Color::MAGENTA, Ncurses::COLOR_MAGENTA],
        [Color::CYAN, Ncurses::COLOR_CYAN],
        [Color::WHITE, Ncurses::COLOR_WHITE]
      ].each do |color, ncurses_color|
        Ncurses.init_pair(color, ncurses_color, Ncurses::COLOR_BLACK)
      end
    end
  end
end
