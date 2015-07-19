class PostsController < ApplicationController
  def index
    @post = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new params.require(:post).permit(:title, :content)
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
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update params.require(:post).permit(:title, :content)
      redirect_to @post
    else
      render :edit
    end
  end
end
