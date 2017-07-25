require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'

SINATRA_PORT = 4567
Capybara.default_max_wait_time=0

def launch_chrome
  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
  Capybara.default_driver = :chrome
  Capybara.app_host = "http://localhost:#{SINATRA_PORT}"
end

launch_chrome
