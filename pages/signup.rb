require_relative 'page'

class SignUp < Page

  HEADER_LOCATOR = {class: 'nav-list-item'}
  SIGNUP_LINK_LOCATOR = {link: 'Signup'}
  EMAIL_ID = {css: 'input#Email.form-input'}
  PASSWORD = {css: 'input#Password.form-input'}
  CONFIRM_PASSWORD = {css: 'input#ConfirmPassword.form-input'}

  def random_num
    return Random.new.rand(1000...9999)
  end

  def random_email
    return "nkpnkp+#{random_num}@gmail.com"
  end

  def random_pswd
    return "JEAT#{random_num}@"
  end
=begin
  def random_email_generator
    return "nkpnkp+#{random_num}@gmail.com"
  end

  def random_pswd_generator
    return "JEAT#{random_num}@"
  end
=end

=begin
  def signup_link
    yield SIGNUP_LINK_LOCATOR
  end

  def signup_information
    yield EMAIL_ID
    yield PASSWORD
    yield CONFIRM_PASSWORD
  end
=end
end