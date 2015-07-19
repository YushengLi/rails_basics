class PostsController < ApplicationController
  def index
    @post = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new params[:post].to_hash
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
end
