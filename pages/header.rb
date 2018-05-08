require_relative 'page'

class Header < Page

  # header
  LOGO_LOCATOR = { class: 'logo' }
  LOGIN_LINK_LOCATOR = { link: 'Login' }
  SIGNUP_LINK_LOCATOR = { link: 'Signup' }
  LANGUAGE_CHANGE_LINK_LOCATOR = { link: 'Français' }
  HEADER_BOTTOM_LOCATOR = { link: 'Help' }


  def logo_locator
    yield LOGO_LOCATOR
  end



end