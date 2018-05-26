require_relative '../spec_helper'
require_relative '../../pages/home'
require_relative '../../pages/page'
require_relative '../../pages/header'
require_relative '../../pages/footer'
require_relative '../../pages/signup'


module HomeHelpers

  RSpec.configure do |config|
    config.before(:each) do
      @page = Page.new(@driver)
      @header = Header.new(@driver)
      @footer = Footer.new(@driver)
      @home = Home.new(@driver)
      @signup = SignUp.new(@driver)
   end
  end

  def load_home_page
    home.ui_elements do |ui_element|
      expect(page.ui_element_displayed?(ui_element)).to be_truthy
    end
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

  def submit_address
    home.address_search
    home.address_btn_submit
  end

  def sign_up_new_user
    header.signup_link_click
    signup.email_id_locator
    signup.password_locator
    signup.confirm_password_locator
    signup.ui_elements do |ui_element|
      expect(page.ui_element_displayed?(ui_element)).to be_truthy
    end
    signup.create_account_locator
    sleep 5
  end

end


#expect(page.clear_then_enter('57 Saddlelake Green Northeast, Calgary, AB T3J 0M7', id: 'homepage-search-fullAddress'))
#expect(page.click(css: 'addressLookup-suggestions-item is-selected'))
#sleep 1
#page.click(css: 'button.btn.btn--primary.addressLookup-actionBtn.form-submit')
