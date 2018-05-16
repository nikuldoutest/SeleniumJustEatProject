require_relative 'page'

class SignUp < Page

  SIGNUP_LINK_LOCATOR = {link: 'Signup'}
  EMAIL_ID = {css: 'input#Email.form-input'}
  PASSWORD = {css: 'input#Password.form-input'}
  CONFIRM_PASSWORD = {css: 'input#ConfirmPassword.form-input'}

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