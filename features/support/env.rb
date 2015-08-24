require 'rspec/expectations'
require 'capybara/cucumber'
require 'selenium'
require 'selenium/webdriver'

Capybara.register_driver :selenium do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  Capybara::Selenium::Driver.new( app, :profile => profile)
end
Capybara.default_wait_time = 10
Capybara.current_driver = :selenium
# Capybara.app_host = 'http://localhost:3000'
Capybara.default_driver = :selenium
Capybara.default_selector = :css
World(RSpec::Matchers)
