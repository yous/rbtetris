# encoding: utf-8
require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'simplecov'
SimpleCov.start do
  add_filter '/features/'
end

require 'rbtetris'

# Helper methods for Cucumber.
module RbTetrisWorld
  def silence_warnings
    old_verbose, $VERBOSE = $VERBOSE, nil
    yield
  ensure
    $VERBOSE = old_verbose
  end
end

World(RbTetrisWorld)
