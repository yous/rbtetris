# encoding: utf-8
After do |_scenario|
  @term.terminate
end

Given(/^I have a screen$/) do
  @term = RbTetris::Term.new
end

Given(/^I have a Tetrimino$/) do
  @tetrimino = RbTetris::Tetrimino.new
end

Then(/^the Tetrimino should have a color$/) do
  assert RbTetris::Term::Color.all.include? @tetrimino.color
end
