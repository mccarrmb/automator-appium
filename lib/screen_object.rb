# frozen_string_literal: true

module ScreenObject
  # Generic "screen" object akin to Selenium's page object
  class Screen
    attr_accessor :driver

    def initialize(driver)
      @driver = driver
    end
  end
end
