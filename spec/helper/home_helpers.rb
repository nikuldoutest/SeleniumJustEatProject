require_relative '../spec_helper'
require_relative '../../pages/home'
require_relative '../../pages/page'
require_relative '../../pages/header'
require_relative '../../pages/footer'
require_relative '../../pages/signup'


module HomeHelpers

  RSpec.configure do |config|
    config.before(:each) do
      @home = Home.new(@driver)
      @page = Page.new(@driver)
      @header = Header.new(@driver)
      @footer = Footer.new(@driver)
      @signup = SignUp.new(@driver)
   end
  end

  def load_home_page
    home.ui_elements do |ui_element|
      expect(page.ui_element_displayed?(ui_element)).to be_truthy
    end
  end

  def submit_address
    expect(page.clear_then_enter('57 Saddlelake Green Northeast, Calgary, AB T3J 0M7', id: 'homepage-search-fullAddress'))
    #expect(page.click(css: 'addressLookup-suggestions-item is-selected'))
    sleep 1
    page.click(css: 'button.btn.btn--primary.addressLookup-actionBtn.form-submit')
  end

  def header_elements
    header.ui_elements do |ui_element|
      expect(page.ui_element_displayed?(ui_element)).to be_truthy
    end
  end

  def footer_elements
    footer.ui_elements do |ui_element|
      expect(page.ui_element_displayed?(ui_element)).to be_truthy
    end
  end

  def sign_up_new_user
    page.click_within(HEADER_LOCATOR, SIGNUP_LINK_LOCATOR)
    sleep 5
    expect(page.clear_then_enter(Signup.random_email, EMAIL_ID))
    expect(page.clear_then_enter(Signup.random_pswd, PASSWORD))
    expect(page.clear_then_enter(Signup.random_pswd, CONFIRM_PASSWORD))
  end

end
