require_relative '../spec_helper'
require_relative '../../pages/home'
require_relative '../../pages/page'


module HomeHelpers
  config.before(:each) do
    @home = Home.new(@driver)
    @page = Page.new(@driver)
    @header = Header.new(@driver)
    @footer = Footer.new(@driver)
  end
end

  def load_home_page
    home.ui_elements do |ui_element|
    expect(page.ui_element_displayed?(ui_element)).to be_truthy
  end

end