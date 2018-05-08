require_relative 'page'

class Home < Page

  MAIN_TEXT = { link_text:'Order delivery today'}
  MAIN_UNDERLINE_TEXT = { link_text: 'Thousands of restaurants at your fingertips' }
  ADDRESS_LOOKUP_TEXT = { link_text: 'All we need is your address'}
  ADDRESS_LOOKUP = { id: 'homepage-search-fullAddress' }
  ADDRESS_LOOKUP_BUTTON = {class: 'btn btn--primary addressLookup-actionBtn form-submit'}



  def ui_elements
    yield MAIN_TEXT
    yield MAIN_UNDERLINE_TEXT
    yield ADDRESS_LOOKUP_TEXT
  end

  def submit_address_text
    yield ADDRESS_LOOKUP
  end

  def submit_address_button
    yield
  end

end