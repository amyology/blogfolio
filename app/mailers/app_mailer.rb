class AppMailer < ApplicationMailer
  def message_email(message)
    @message = message
    mail(from: @message.email, to: ENV["my_email"], subject: @message.subject)
  end

  def comment_email(comment)
    @comment = comment
    @post_title = Post.find(@comment.post_id).title
    mail(from: @comment.email, to: ENV["my_email"], subject: "New Comment on #{@post_title}")
  end
end
