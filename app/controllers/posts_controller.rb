class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update]

  def index
    @post = Post.all
  end
  
  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    # @post = Post.new({
    #   title: params[:title],
    #   content: params[:content]
    # })
    if @post.save
      redirect_to post_path(@post.id)
      # redirect_to @post # This can work like above also, you can pass an ActiveRecord to link to that path
    else
      # if validates error, back to the form.
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update post_params
      redirect_to @post
    else
      render :edit
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
