class UserMailer < ActionMailer::Base
  default :from => "pahninsd@gmail.com"
  def welcome_email()
    #@user = user
    #@url  = "http://example.com/login"
    mail(:to => "ipahnin@gmail.com", :subject => "Welcome to My Awesome Site")
  end
end
