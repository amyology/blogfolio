class CommentsController < ApplicationController
  invisible_captcha only: [:create, :update], honeypot: :subtitle

  def index
    @comments = Comment.all.order(id: :desc)
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      AppMailer.comment_email(@comment).deliver_now
      flash[:notice] = "Thanks! Your comment is awaiting approval."
      redirect_to request.referer
    else
      flash[:alert] = "Please fill in all required fields."
      redirect_to request.referer
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to '/comments'
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to "/comments"
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :email, :body, :url, :post_id, :approved)
  end

end
