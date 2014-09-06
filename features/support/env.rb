# encoding: utf-8
require 'simplecov'
if ENV['CODECLIMATE_REPO_TOKEN']
  require 'codeclimate-test-reporter'
  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter,
    CodeClimate::TestReporter::Formatter
  ]
end
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
