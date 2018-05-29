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
      @searchresult = SearchResult.new(@driver)
   end
  end

  #Verify home page elements

  def load_home_page
    home.ui_elements do |ui_element|
      expect(page.ui_element_displayed?(ui_element)).to be_truthy
    end
  end

  #Verify header elements

  def header_elements
    header.ui_elements do |ui_element|
      expect(page.ui_element_displayed?(ui_element)).to be_truthy
    end
  end

  #Verify footer elements

  def footer_elements
    footer.ui_elements do |ui_element|
      expect(page.ui_element_displayed?(ui_element)).to be_truthy
    end
  end

  def submit_address
    home.address_search
    #home.address_btn_submit
  end

  #Sign up for new user

  def sign_up_new_user
    header.signup_link_click
    signup.ui_elements do |ui_element|
      expect(page.ui_element_displayed?(ui_element)).to be_truthy
    end
    signup.signup_user_information
  end

  #Search restaurant nearby area

  def search_result_nearby_location
    searchresult.ui_elements do |ui_element|
      expect(page.ui_element_displayed?(ui_element)).to be_truthy
    end
  end

  #open restaurant menu

  def open_restaurnat_menu
    searchresult.SEARCH_LISTING

  end

end

