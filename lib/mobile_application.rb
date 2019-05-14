# frozen_string_literal: true

# Class for application-specific definitions
class MobileApplication
  attr_reader :binary
  attr_reader :name
  attr_reader :namespace

  def initialize(binary, namespace = 'app.local.user', name = 'App')
    @binary = binary
    @name = name
    @namespace = namespace
  end
end
