require_relative 'page'

class Header < Page

  # header
  LOGO_LOCATOR = { class: 'logo' }
  LOGIN_LINK_LOCATOR = { link: 'Login' }
  SIGNUP_LINK_LOCATOR = { link: 'Signup' }
  LANGUAGE_CHANGE_LINK_LOCATOR = { link: 'Français' }
  HEADER_BOTTOM_LOCATOR = { link: 'Help' }


  def ui_elements
    yield LOGO_LOCATOR
    yield LOGIN_LINK_LOCATOR
    yield SIGNUP_LINK_LOCATOR
    yield LANGUAGE_CHANGE_LINK_LOCATOR
    yield HEADER_BOTTOM_LOCATOR
  end


end