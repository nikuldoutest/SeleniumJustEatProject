require_relative 'page'

class Home < Page


  MAIN_PICTURE = {class: 'hero-bgImg'}
  MAIN_TEXT = {class: 'l-container'}
  ADDRESS_LOOKUP = {id: 'homepage-search-fullAddress'}
  ADDRESS_LOOKUP_BUTTON = {css: 'button.btn.btn--primary.addressLookup-actionBtn.form-submit'}

  def ui_elements
    yield MAIN_PICTURE
    yield MAIN_TEXT
  end

  def address_search
    clear_then_enter"57 Saddlelake Green Northeast, Calgary, AB T3J 0M7", ADDRESS_LOOKUP
  end

  def address_btn_submit
    click ADDRESS_LOOKUP_BUTTON
  end

end