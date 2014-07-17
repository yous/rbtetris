# RbTetris

[![Build Status](https://travis-ci.org/yous/rbtetris.svg?branch=master)](https://travis-ci.org/yous/rbtetris)
[![Dependency Status](https://gemnasium.com/yous/rbtetris.svg)](https://gemnasium.com/yous/rbtetris)
[![Coverage Status](https://img.shields.io/coveralls/yous/rbtetris.svg)](https://coveralls.io/r/yous/rbtetris)
[![Inline docs](http://inch-ci.org/github/yous/rbtetris.png?branch=master)](http://inch-ci.org/github/yous/rbtetris)

Simple Tetris game implemented by Ruby.

## Requirements

### [Ncurses][]

[Ncurses]: https://www.gnu.org/software/ncurses/ncurses.html

- Ubuntu

    ``` sh
    sudo apt-get install libncursesw5-dev
    gem install ncursesw
    ```

- Mac OS X

    Install [Homebrew][].

[Homebrew]: http://brew.sh

    ``` sh
    brew install ncurses
    brew doctor
    brew link --force ncurses
    gem install ncursesw
    ```

## License

See [UNLICENSE](UNLICENSE).
