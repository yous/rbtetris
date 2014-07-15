# encoding: utf-8
require "ncursesw"

# Public: Terminal operations.
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
  end

  # Public: Initialize a new Term. Initialize color pairs if Ncurses has colors.
  def initialize
    Ncurses.initscr
    initialize_color if Ncurses.has_colors?
  end

  # Public: Terminate Ncurses. Must be called before termination of program.
  #
  # Examples
  #
  #   begin
  #     term = Term.new
  #     # Do something.
  #   ensure
  #     term.terminate
  #   end
  def terminate
    Ncurses.endwin
  end

  private

  # Internal: Initialize color pairs for Ncurses.
  def initialize_color
    Ncurses.start_color
    Ncurses.init_pair(Color::RED, Ncurses::COLOR_RED, Ncurses::COLOR_BLACK)
    Ncurses.init_pair(Color::GREEN, Ncurses::COLOR_GREEN, Ncurses::COLOR_BLACK)
    Ncurses.init_pair(Color::GREEN, Ncurses::COLOR_GREEN, Ncurses::COLOR_BLACK)
    Ncurses.init_pair(Color::YELLOW, Ncurses::COLOR_YELLOW, Ncurses::COLOR_BLACK)
    Ncurses.init_pair(Color::BLUE, Ncurses::COLOR_BLUE, Ncurses::COLOR_BLACK)
    Ncurses.init_pair(Color::MAGENTA, Ncurses::COLOR_MAGENTA, Ncurses::COLOR_BLACK)
    Ncurses.init_pair(Color::CYAN, Ncurses::COLOR_CYAN, Ncurses::COLOR_BLACK)
    Ncurses.init_pair(Color::WHITE, Ncurses::COLOR_WHITE, Ncurses::COLOR_BLACK)
  end
end
