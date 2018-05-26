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

  def signup_user_information
    password_gen = random_pswd
    clear_then_enter random_email, EMAIL_ID_LOCATOR
    clear_then_enter password_gen, PASSWORD_LOCATOR
    clear_then_enter password_gen, CONFIRM_PASSWORD_LOCATOR
    click CREATE_ACCOUNT_LOCATOR
  end

  def ui_elements
    yield TERMS_LOCATOR
    yield PRIVACY_LOCATOR
    yield LOGIN_LOCATOR
    yield G_SIGNUP_LOCATOR
    yield FB_SIGNUP_LOCATOR
  end

 # def create_account_locator

 # end
end