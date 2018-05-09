require_relative 'spec_helper'


describe 'Home -' do

  include HomeHelpers

  let(:home) { Home.new(@driver) }
  let(:page) { Page.new(@driver) }


  it 'should load page and verify UI elements on Home', :smoke do
    load_home_page
  end

  it 'should enter the address value in the box', :smoke do
    submit_address_text
  end

  it 'should look for address while submit button', :smoke do
    submit_address_button
  end


end
