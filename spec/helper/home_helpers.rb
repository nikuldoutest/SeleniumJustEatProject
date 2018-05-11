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

  def submit_address
    expect(page.clear_then_enter('57 Saddlelake Green Northeast, Calgary, AB T3J 0M7', id: 'homepage-search-fullAddress'))
    expect(page.click(css: 'button.btn.btn--primary.addressLookup-actionBtn.form-submit'))
    sleep 2
  end

end
