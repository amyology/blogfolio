class AppMailer < ApplicationMailer
  def sign_up_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end

  def message_email(message)
    @message = message
    mail(from: @message.email, to: ENV["my_email"], subject: @message.subject)
  end
end
