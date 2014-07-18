# encoding: utf-8
Around do |_scenario, block|
  RbTetris::Term.new do
    block.call
  end
end

Given(/^I have a '(.+)' shaped Tetrimino$/) do |shape|
  @tetrimino = RbTetris::Tetrimino.new(RbTetris::Tetrimino.const_get(shape))
end

Then(/^the Tetrimino should have a shape$/) do
  assert RbTetris::Tetrimino.shapes.include? @tetrimino.shape
end

Then(/^the shape should have the color (.+)$/) do |color|
  assert_equal RbTetris::Term::Color.const_get(color), @tetrimino.shape.color
end
