require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require 'bundler'
#require 'rspec/retry'
#require_relative '../lib/login_credentials'

Dir['./spec/helper/**/*.rb'].each { |file| require file }

Bundler.require(:test_frameworks, :test_harness, :saucelabs, :libraries, :debugging)

RSpec.configure do |config|

  config.before(:each) do |example|
    # default browser is chrome; others can passed as variables
    case ENV['browser'] ||= 'chrome'
    when 'chrome'
      @driver = Selenium::WebDriver.for :chrome
    when 'firefox'
      @driver = Selenium::WebDriver.for :firefox
    end
    @driver.get 'https://www.just-eat.ca/'
  end

  config.before(:each) do
    @driver.manage.delete_all_cookies
  end


  config.after(:each) do |example|
    @driver.quit
  end
end
