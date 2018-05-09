require_relative 'page'

class Home < Page

  MAIN_PICTURE = { class: 'hero-bgImg'}
  MAIN_TEXT = { class: 'l-container' }
# ADDRESS_LOOKUP_AREA = { class: 'form addressLookup addressLookup--hero addressLookup--light'}
  ADDRESS_LOOKUP = { id: 'homepage-search-fullAddress' }
  ADDRESS_LOOKUP_BUTTON = {class: 'btn btn--primary addressLookup-actionBtn form-submit'}



  def ui_elements
    yield MAIN_PICTURE
    yield MAIN_TEXT
#   yield ADDRESS_LOOKUP_AREA
  end

  def submit_address_text
    yield ADDRESS_LOOKUP
  end

  def submit_address_button
    yield ADDRESS_LOOKUP_BUTTON
  end

end