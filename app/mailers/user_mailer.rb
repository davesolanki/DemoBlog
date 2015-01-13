class UserMailer < ActionMailer::Base
  default :from => "ogoldberg@gmail.com"
  
  def registration_confirmation(user)
    mail(:to => user.email, :subject => "Registered")
  end
end
