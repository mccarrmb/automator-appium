# frozen_string_literal: true

require 'test_environment.rb'

# Client class for standard Android hardware Appium config
class Client
  PROPERTIES = {
    build: 'QA',
    binary: 'app.apk',
    namespace: 'com.android.app',
    name: 'App'
  }.freeze

  CAPABILITIES = {
    caps: {
      automationName: 'UiAutomator2',
      platformName: 'Android',
      platformVersion: '4.4',
      deviceName: 'Generic Android Device',
      app: File.join(TestEnvironment::APP_PATH, PROPERTIES[:binary]),
      browserName: '',
      newCommandTimeout: TestEnvironment::IMPLICIT_WAIT,
      language: 'en',
      locale: 'en_US',
      uuid: '',
      orientation: 'PORTRAIT',
      autoWebview: false,
      noReset: false,
      fullReset: false,
      eventTimings: true,
      enablePerformanceLogging: false,
      printPageSourceOnFindFailure: true,
      # Android driver settings
      # appActivity: ,
      # appPackage: ,
      # appWaitActivity: ,
      # appWaitPackage: ,
      # appWaitDuration: TestEnvironment::LAUNCH_TIMEOUT,
      # deviceReadyTimeout: TestEnvironment::DEVICE_TIMEOUT,
      # androidCoverage: ,
      # androidCoverageEndIntent: ,
      androidDeviceReadyTimeout: TestEnvironment::BOOT_TIMEOUT,
      androidInstallTimeout: TestEnvironment::INSTALL_TIMEOUT,
      # androidInstallPath: ,
      # adbPort: ,
      # systemPort: ,
      # remoteAdbHost: ,
      # androidDeviceSocket: ,
      # avd: ,
      # avdLaunchTimeout: ,
      # avdReadyTimeout: ,
      # avdArgs: ,
      # useKeystore: ,
      # keystorePath: ,
      # keystorePassword: ,
      # keyAlias: ,
      # keyPassword: ,
      # chromedriverExecutable: ,
      # chromedriverExecutableDir: ,
      # chromedriverChromeMappingFile: ,
      # autoWebviewTimeout: ,
      # intentAction: ,
      # intentCategory: ,
      # intentFlags: ,
      # optionalIntentArguments: ,
      # dontStopAppOnReset: ,
      # unicodeKeyboard: ,
      # resetKeyboard: ,
      # noSign: ,
      # ignoreUnimportantViews: ,
      # disableAndroidWatchers: ,
      # chromeOptions: ,
      # recreateChromeDriverSessions: ,
      # nativeWebScreenshot: ,
      # androidScreenshotPath: ,
      # autoGrantPermissions: ,
      networkSpeed: 'full',
      # gpsEnabled: ,
      isHeadless: false,
      uiautomator2ServerLaunchTimeout: TestEnvironment::LAUNCH_TIMEOUT
      # uiautomator2ServerInstallTimeout: ,
      # otherApps:
    },
    appium_lib: {
      sauce_username:   nil, # don't run on Sauce
      sauce_access_key: nil,
      wait: 60
    }
  }.freeze
end
