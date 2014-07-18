# encoding: utf-8
Around do |_scenario, block|
  RbTetris::Term.new do
    block.call
  end
end

Given(/^I have a Tetrimino$/) do
  @tetrimino = RbTetris::Tetrimino.new
end

Then(/^the Tetrimino should have a color$/) do
  assert RbTetris::Term::Color.all.include? @tetrimino.color
end
