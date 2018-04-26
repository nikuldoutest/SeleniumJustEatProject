require_relative 'spec_helper'


describe 'Home -' do

  include HomeHelpers

  let(:home) { Home.new(@driver) }
  let(:header) { Header.new(@driver) }
  let(:footer) { Footer.new(@driver) }
  let(:page) { Page.new(@driver) }


  it 'should load page and verify UI elements', :smoke do
    home.ui_elements do |ui_element|
      expect(page.ui_element_displayed?(ui_element)).to be_truthy
    end

    it 'should verify UI elements in Header', :smoke do
      header.ui_elements do |ui_element|
        expect(page.ui_element_displayed?(ui_element)).to be_truthy
      end
    end

    it 'should verify UI elements in Footer', :smoke do
      footer.ui_elements do |ui_element|
        expect(page.ui_element_displayed?(ui_element)).to be_truthy
      end
    end

    it 'click logo and verify the page title' do
      load_home_page
      home.click_logo
      expect(page.title).to eq('Order Food Delivery Online | Pizza, Sushi & Chinese at Just-Eat.ca')
    end


  end

end

