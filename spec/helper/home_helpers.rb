require_relative '../spec_helper'
require_relative '../../pages/home'
require_relative '../../pages/page'


module HomeHelpers

  RSpec.configure do |config|
    config.before(:each) do
      @home = Home.new(@driver)
      @page = Page.new(@driver)
   end
  end

  def load_home_page
    home.ui_elements do |ui_element|
      expect(page.ui_element_displayed?(ui_element)).to be_truthy
    end
  end

  def submit_address_text
    home.submit_address_text do |locator|
      expect(page.clear_then_enter(locator)).clear
      expect(page.clear_then_enter(locator)).send_keys "57 Saddlelake Green NE, Calgary, AB T3J0M7"
    end
  end

  def submit_address_button
    home.submit_address_button do |locator|
      expect(page.click(locator)).click
    end
  end


end
