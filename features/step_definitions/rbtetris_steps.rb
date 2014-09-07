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

Given(/^I have a '(.+)' shaped Tetrimino$/) do |shape|
  @tetrimino = RbTetris::Tetrimino.new(RbTetris::Tetrimino.const_get(shape))
end

Then(/^the color should be declared$/) do
  assert RbTetris::Terminal::Color.all.include?(@color)
end

Then(/^the Tetrimino should have a shape$/) do
  assert RbTetris::Tetrimino.shapes.include? @tetrimino.shape
end

Then(/^the shape should have the color (.+)$/) do |color|
  assert_equal RbTetris::Terminal::Color.const_get(color),
               @tetrimino.shape.color
end
