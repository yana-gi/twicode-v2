# frozen_string_literal: true

require 'capybara/rspec'
require 'selenium-webdriver'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome_headless
  config.javascript_driver = :selenium_chrome_headless
  config.default_max_wait_time = 5
  config.server_host = '0.0.0.0'
  config.server_port = 3000
end

Capybara.register_driver :selenium_chrome_headless do |app|
  # Use chromium-driver path explicitly
  Webdrivers::Chromedriver.required_version = nil

  options = Selenium::WebDriver::Chrome::Options.new
  options.binary = '/usr/bin/chromium'
  options.add_argument('--headless')
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--disable-gpu')
  options.add_argument('--remote-debugging-port=9222')
  options.add_argument('--window-size=1400,1400')
  options.add_argument('--disable-features=VizDisplayCompositor')

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options,
    service: Selenium::WebDriver::Chrome::Service.new(path: '/usr/bin/chromedriver')
  )
end
