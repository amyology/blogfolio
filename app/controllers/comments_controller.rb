class CommentsController < ApplicationController
  invisible_captcha only: [:create], honeypot: :subtitle

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      flash[:notice] = "Thanks! Your comment is awaiting approval."
      redirect_to request.referer
    else
      flash[:alert] = "Please fill in all required fields."
      redirect_to request.referer
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to "/blog"
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :email, :body, :url, :post_id)
  end

end
