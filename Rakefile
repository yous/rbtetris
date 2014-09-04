# encoding: utf-8
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))

task default: [:features, :rubocop]

require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:features)

require 'rubocop/rake_task'
RuboCop::RakeTask.new(:rubocop) do |rubocop|
  rubocop.formatters = %w(progress offenses)
end
