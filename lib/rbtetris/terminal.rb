# encoding: utf-8
require "ncursesw"

module RbTetris
  # Public: Terminal operations. teardown should be called before termination.
  #
  # Examples
  #
  #   begin
  #     terminal = Terminal.new
  #   ensure
  #     terminal.teardown
  #   end
  class Terminal
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

    # Public: Initialize a new Terminal. Initialize color pairs if Ncurses has
    # colors.
    def initialize
      @stdscr = Ncurses.initscr
      initialize_color if Ncurses.has_colors?
    end

    # Public: Teardown the Terminal. Must be called before termination of the
    # program.
    def teardown
      Ncurses.endwin
      Ncurses.delscreen(@stdscr) unless @stdscr.destroyed?
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
