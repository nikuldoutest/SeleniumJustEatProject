require_relative 'spec_helper'


describe 'Home -' do

  include HomeHelpers

  let(:page) { Page.new(@driver) }
  let(:home) { Home.new(@driver) }
  let(:header) { Header.new(@driver) }
  let(:footer) { Footer.new(@driver) }
  let(:signup) {SignUp.new(@driver)}


  it 'should load home page and verify UI elements on Home', :smoke do
    load_home_page
    header_elements
    footer_elements
    submit_address
    sleep 10
  end

  xit 'should sign up for new user', :smoke do
    sign_up_new_user
  end

end
