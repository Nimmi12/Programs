class Usermailer < ActionMailer::Base
  default from: "from@example.com"
  def welcome(email,subject,message)
  	@email = email
  	@subject = subject
  	@message = message
  mail(to: @email,subject: @subject,message: @message)
  
  end
end
