require_relative 'spec_helper'


describe 'Home -' do

  include HomeHelpers

  let(:home) { Home.new(@driver) }
  #let(:header) { Header.new(@driver) }
  #let(:footer) { Footer.new(@driver) }
  let(:page) { Page.new(@driver) }


  it 'should load page and verify UI elements on Home', :smoke do
    load_home_page
  end

end
