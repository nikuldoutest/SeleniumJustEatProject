require_relative 'page'

class SignUp < Page

  EMAIL_ID_LOCATOR = {css: 'input#Email.form-input'}
  PASSWORD_LOCATOR = {css: 'input#Password.form-input'}
  CONFIRM_PASSWORD_LOCATOR = {css: 'input#ConfirmPassword.form-input'}
  TERMS_LOCATOR = {link: 'Terms & Conditions'}
  PRIVACY_LOCATOR = {link: 'Privacy Policy and Cookies Policy'}
  FB_SIGNUP_LOCATOR = {css: '#registerForm > fieldset > div.g.u-separatedSpace--top > a.g-col.socialLogin-btn.btn.btn--social.btn--social--facebook'}
  G_SIGNUP_LOCATOR = {css: '#registerForm > fieldset > div.g.u-separatedSpace--top > a.g-col.socialLogin-btn.btn.btn--social.btn--social--google'}
  LOGIN_LOCATOR = {link: 'Login'}
  CREATE_ACCOUNT_LOCATOR = {css: '#registerSubmitBtn'}

  def random_num
    return Random.new.rand(1000...9999)
  end

  def random_email
    return "nikul#{random_num}@gmail.com"
  end

  def random_pswd
    return "Jeat#{random_num}@"
  end

  def email_id_locator
    clear_then_enter random_email, EMAIL_ID_LOCATOR
  end

  def password_locator
    clear_then_enter "Just#1234", PASSWORD_LOCATOR
  end

  def confirm_password_locator
    clear_then_enter "Just#1234", CONFIRM_PASSWORD_LOCATOR
  end

  def ui_elements
    yield TERMS_LOCATOR
    yield PRIVACY_LOCATOR
    yield LOGIN_LOCATOR
    yield G_SIGNUP_LOCATOR
    yield FB_SIGNUP_LOCATOR
  end

  def create_account_locator
    click CREATE_ACCOUNT_LOCATOR
  end
end