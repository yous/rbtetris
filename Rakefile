# encoding: utf-8
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "lib"))

task :default => [:rubocop]

require "rubocop/rake_task"
RuboCop::RakeTask.new(:rubocop) do |rubocop|
  rubocop.formatters = %w(simple offenses)
end
