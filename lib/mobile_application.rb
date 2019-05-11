# frozen_string_literal: true

# Class for application-specific definitions
class MobileApplication
  attr_reader :app_namespace
  attr_reader :app_name

  # Name of the actual package as it appears in bin/
  BINARY = { android_arm7: 'app-ARMv7.apk',
             android_arm8: 'app-ARMv8.apk',
             android_x86: 'app-x86.apk',
             android_x86_64: 'app-x86_64.apk',
             ios_native: 'app.ipa',
             ios_simulator: 'app.app' }.freeze

  def initialize(namespace = 'app.local.user', name = 'App')
    @app_namespace = namespace
    @app_name = name
  end
end
