class UserMailer < ActionMailer::Base
  default :from => "pahninsd@gmail.com"
  def daily_email(user,msg)
    @name = user.name
    @msg  = msg
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end
  
  def send_mails()
    msg=Draft.find_by_use(true).draft
    List.find_each do |user|
      daily_email(user,msg)
    end
  end
end
