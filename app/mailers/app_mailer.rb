class AppMailer < ApplicationMailer
  def message_email(message)
    @message = message
    mail(from: @message.email, to: ENV["my_email"], subject: @message.subject)
  end
end
