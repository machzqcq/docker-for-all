class LoginPage < GenericBasePage
  include DataHelper

  element(:email) {|b| b.text_field(id: "email")}
  element(:password) {|b| b.text_field(id: "passwd")}
  element(:signin_button) {|b| b.button(id: "SubmitLogin")}


  def login(username="abc@xyz.com",passwd="Test@123")
    email.set username
    password.set passwd
    signin_button.click
  end

  def login_yml(options={})
    options = options.with_indifferent_access
    options.to_hash.reverse_merge! data_yml_hash.with_indifferent_access
    email.set data_yml_hash['username']
    password.set data_yml_hash['password']
    signin_button.click
  end


end
