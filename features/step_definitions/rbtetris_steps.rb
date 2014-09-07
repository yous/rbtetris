# encoding: utf-8

Before do
  silence_warnings { @term = RbTetris::Terminal.new }
end

After do
  @term.teardown
end

Given(/^I have a color (.+)$/) do |color|
  @color = RbTetris::Terminal::Color.const_get(color)
end

Given(/^I have a '(.+)' Tetrimino$/) do |info|
  @tetrimino = RbTetris::Tetrimino.new(RbTetris::Tetrimino.const_get(info))
end

Then(/^the color should be declared$/) do
  assert RbTetris::Terminal::Color.all.include?(@color)
end

Then(/^the Tetrimino should have a info$/) do
  assert RbTetris::Tetrimino.infos.include?(@tetrimino.info)
end

Then(/^it should have the color (.+)$/) do |color|
  assert_equal RbTetris::Terminal::Color.const_get(color),
               @tetrimino.info.color
end
