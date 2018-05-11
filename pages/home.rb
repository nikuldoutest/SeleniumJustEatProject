require_relative 'page'

class Home < Page


  MAIN_PICTURE = {class: 'hero-bgImg'}
  MAIN_TEXT = {class: 'l-container'}
  ADDRESS_LOOKUP = {}
  ADDRESS_LOOKUP_BUTTON = {}

  def ui_elements
    yield MAIN_PICTURE
    yield MAIN_TEXT
  end

end