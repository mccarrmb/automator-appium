# frozen_string_literal: true

require 'csv'
require 'selenium-webdriver'
require 'minitest/autorun'
require 'minitest/unit'
require 'minitest/pride'
require 'test_environment.rb'
require 'local_driver.rb'
require 'remote_driver.rb'
require 'client.rb'

# Main test class for setting up config and creating drivers
class TestBase < Minitest::Test
  def setup
    @driver = LocalDriver.new
    @agent = @driver.instance
    Appium.promote_appium_methods ::Minitest::Test, driver
  end

  def teardown
    !@agent.nil? ? @agent.quit : false
  end
end
