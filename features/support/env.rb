require 'httparty'
require 'pry'
require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'pry'
# require 'httparty'
# require 'httparty/request'
# require 'httparty/response/headers'
# require 'date'
require_relative 'data.rb'
require_relative 'page_helper.rb'

World(DataLoad)
World(Pages)

$env = (ENV['ENV'] || 'qa')

$viacep_url = {
  'qa' => 'http://viacep.com.br/ws/'
}

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'http://bpmhml.uss.com.br/bonita/'
  config.default_max_wait_time = 18
  Capybara.page.driver.browser.manage.window.maximize
end
