# filename: simple_example.rb.rb

require 'selenium-webdriver'
require 'rspec/expectations'
include RSpec::Matchers

def setup
  caps = Selenium::WebDriver::Remote::Capabilities.send("chrome")
  @driver = Selenium::WebDriver.for(:remote, url: "http://0.0.0.0:4444/wd/hub", desired_capabilities: caps)
  @driver.manage.window.size = Selenium::WebDriver::Dimension.new(1920, 1080)
end

def teardown
  @driver.quit
end

def run
  setup
  yield
  teardown
end

run do
  # Open the main page and check for the title
  @driver.get 'http://the-internet.herokuapp.com/'
  expect(@driver.title).to eql 'The Internet'

  # Generate a screenshot of the main page
  @driver.save_screenshot(File.join(Dir.pwd, "selenium-docker-main-page.png"))

  # Open the chebox page and check if the last checkbox is "checked"
  @driver.get 'http://the-internet.herokuapp.com/checkboxes'
  checkboxes = @driver.find_elements(css: 'input[type="checkbox"]')
  expect(checkboxes.last.selected?).to eql true

  # Generate a screenshot of the checkbox page
  @driver.save_screenshot(File.join(Dir.pwd, "selenium-docker-checkbox-page.png"))
end