class PostsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      flash[:success] = "Post created."
      redirect_to "/posts/#{@post.id}"
    else
      flash[:alert] = @post.errors.full_messages.join(", ")
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:success] = "Post updated."
      redirect_to "/posts/#{@post.id}"
    else
      flash[:alert] = @post.errors.full_messages.join(", ")
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/blog'
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
