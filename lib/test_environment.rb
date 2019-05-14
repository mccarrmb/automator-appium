# frozen_string_literal: true

# Module containing universal characteristics of the test environment - Appium
# server - that will be consistent for all test processes
module TestEnvironment
  RETRIES = 10 # Amount of times to retry
  IMPLICIT_WAIT = 10 # seconds to wait for GUI elements to be present/usable
  DEVICE_TIMEOUT = 5 # seconds to wait for the device to respond to requests
  BOOT_TIMEOUT = 60 # seconds to wait for the device to boot
  SCRSHOT_TIMEOUT = 3 # seconds to wait for the screenshot to capture
  INSTALL_TIMEOUT = 90_000 # milliseconds to wait for app installation
  LAUNCH_TIMEOUT = 12_000 # milliseconds to wait for app launch
  KEY_DELAY = 100 # milliseconds between keypresses
  APP_PATH = File.join(__dir__, '..', 'bin').freeze
  LOG_DIR = File.join(__dir__, '..', 'log').freeze
  Dir.mkdir(LOG_DIR) unless File.exist?(LOG_DIR)

  # Custom exception for passing invalid config arguments
  class BadAppConfigError < StandardError
    attr_reader :message
    def initialize(message = nil)
      @message = message
    end
  end

  # Custom exception for bad capability hashes
  class BadCapabilityError < StandardError
    attr_reader :message
    def initialize(message = nil)
      @message = message
    end
  end
end
