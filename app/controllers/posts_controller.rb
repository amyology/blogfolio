class PostsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy, :drafts]

  def index
    # posts = Post.where(published: true)
    @posts = Post.where(published: true).order(:created_at).reverse.take(10)

    @search = params[:search]
    @tag_search = params[:tag_search]
    @category_search = params[:category_search]

    @searched = posts.where("title ILIKE ? OR body ILIKE ?", "%#{@search}%", "%#{@search}%") if @search.blank? == false
    @searched = Tag.find_by(tag_name: @tag_search).posts if @tag_search.blank? == false
    @searched = Category.find_by(category_name: @category_search).posts if @category_search.blank? == false
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @category_list = @post.categories.collect { |category| category.category_name }
    @tag_list = @post.tags.collect { |tag| tag.tag_name }
    @approved_comments = @post.comments.where(approved: true).order(id: :asc)
  end

  def archive
    @posts = Post.where(published: true).order(:created_at).reverse
    @categories = Category.all.collect { |category| category.category_name }
    @tags = Tag.all.collect { |tag| tag.tag_name }
  end

  def drafts
    @drafts = Post.where(published: false).order(:created_at).reverse
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      @category_string = params[:category_string]
      @category_string_split = @category_string.split(", ")
      @category_string_split.each do |category|
        category = category.strip
        if !Category.find_by(category_name: category)
          @new_category = Category.create(category_name: category)
          CategorizedPost.create(
            post_id: @post.id,
            category_id: @new_category.id
          )
        else
          @category_id = Category.find_by(category_name: category)
          CategorizedPost.create(
            post_id: @post.id,
            category_id: @category_id.id
          )
        end
      end

      @tag_string = params[:tag_string]
      @tag_string_split = @tag_string.split(", ")
      @tag_string_split.each do |tag|
        tag = tag.strip
        if !Tag.find_by(tag_name: tag)
          @new_tag = Tag.create(tag_name: tag)
          TaggedPost.create(
            post_id: @post.id,
            tag_id: @new_tag.id
          )
        else
          @tag_id = Tag.find_by(tag_name: tag)
          TaggedPost.create(
            post_id: @post.id,
            tag_id: @tag_id.id
          )
        end
      end

      flash[:success] = "Post created."
      redirect_to "/posts/#{@post.id}"
    else
      flash[:alert] = @post.errors.full_messages.join(", ")
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    @post_categories = @post.categories.collect { |category| category.category_name }
    @category_string = @post_categories.join(", ")
    @post_tags = @post.tags.collect { |tag| tag.tag_name }
    @tag_string = @post_tags.join(", ")
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      @post.categorized_posts.each { |post| post.delete }
      @category_string = params[:category_string]
      @category_string_split = @category_string.split(", ")
      @category_string_split.each do |category|
        category = category.strip
        if !Category.find_by(category_name: category)
          @new_category = Category.create(category_name: category)
          CategorizedPost.create(
            post_id: @post.id,
            category_id: @new_category.id
          )
        else
          @category_id = Category.find_by(category_name: category)
          CategorizedPost.create(
            category_id: @category_id.id,
            post_id: @post.id
          )
        end
      end

      @post.tagged_posts.each { |post| post.delete }
      @tag_string = params[:tag_string]
      @tag_string_split = @tag_string.split(", ")
      @tag_string_split.each do |tag|
        tag = tag.strip
        if !Tag.find_by(tag_name: tag)
          @new_tag = Tag.create(tag_name: tag)
          TaggedPost.create(
            post_id: @post.id,
            tag_id: @new_tag.id
          )
        else
          @tag_id = Tag.find_by(tag_name: tag)
          TaggedPost.create(
            tag_id: @tag_id.id,
            post_id: @post.id
          )
        end
      end

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
    params.require(:post).permit(:title, :body, :published)
  end
end
