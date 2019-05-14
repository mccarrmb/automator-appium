# frozen_string_literal: true

require 'date'
require 'test_environment.rb'
require 'client.rb'

# Class for setting up local execution on simulator/emulator or attached physical device
class LocalDriver
  attr_reader :app
  attr_reader :log_directory
  attr_accessor :instance

  def initialize
    @instance = Appium::Driver.new(Client::CAPABILITIES, true).start_driver
  end

  def capture_state(name); end

  def log_time
    Time.now.strftime('_%Y-%m-%dT%H:%M:%S.%L')
  end
end
