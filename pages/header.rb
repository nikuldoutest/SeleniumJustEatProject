require_relative 'page'

class Header < Page

  # header
  HEADER_LOCATOR = {css: 'header.header'}
  LOGO_LOCATOR = { class: 'logo' }
  LOGIN_LINK_LOCATOR = { link: 'Login' }
  SIGNUP_LINK_LOCATOR = { link: 'Signup' }
  LANGUAGE_CHANGE_LINK_LOCATOR = { link: 'Français' }
  HELP_BOTTOM_LOCATOR = { link: 'Help' }


  def ui_elements
    yield HEADER_LOCATOR
    yield LOGO_LOCATOR
    yield LOGIN_LINK_LOCATOR
    yield SIGNUP_LINK_LOCATOR
    yield LANGUAGE_CHANGE_LINK_LOCATOR
    yield HELP_BOTTOM_LOCATOR
  end

  def signup_link_click
    click SIGNUP_LINK_LOCATOR
  end


end