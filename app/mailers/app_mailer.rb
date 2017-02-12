class AppMailer < ApplicationMailer
  def sign_up_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end

  def message_email(message)
    @message = message
    mail(from:)
  end
end
