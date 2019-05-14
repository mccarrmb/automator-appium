# frozen_string_literal: true

require 'rake/testtask'
require 'rubocop/rake_task'

Dir['tasks/**/*.rake'].each { |rake| load rake }

desc 'Start a console session with Appium, Pry, and autocomplete loaded'
task :console do
  require 'irb'
  require 'irb/completion'
  require 'pry'
  require 'appium_lib'
  ARGV.clear
  IRB.start
end

desc 'Calls out awful code'
RuboCop::RakeTask.new do |t|
  t.fail_on_error = false
end

# Android emulator is the easiest to set up
task default: ['android_emulator']
