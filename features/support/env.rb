require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'selenium-webdriver'
require 'pry'
require_relative 'page_helper.rb'

World(Pages)
Capybara.configure do |config|
    config.default_driver= :selenium_chrome
    config.app_host= 'https://www.kabum.com.br'
    config.default_max_wait_time= 15

end
