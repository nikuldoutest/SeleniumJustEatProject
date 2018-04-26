require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require 'bundler'
#require 'rspec/retry'
#require_relative '../lib/login_credentials'


Dir['./spec/helpers/**/*.rb'].each { |file| require file }

Bundler.require(:test_frameworks, :test_harness, :saucelabs, :libraries, :debugging)

RSpec.configure do |config|

  config.before(:each) do |example|

    case ENV['browser'] ||= 'chrome'

    when 'chrome'
      @driver = Selenium::WebDriver.for :chrome
    when 'firefox'
      @driver = Selenium::WebDriver.for :firefox
    end
    @driver.get 'https://www.just-eat.ca/'
  end

  config.after(:each) do |example|
    @driver.quit
  end
end