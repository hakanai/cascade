class PostsController < ApplicationController
  def index
    @posts = Post.find(:all)
  end

  def new
    @post = params[:type].camelize.constantize.new
  end

  def create
    @post = params[:type].camelize.constantize.new(params[:post])
    @post.save!
    redirect_to posts_path
  rescue ActiveRecord::RecordInvalid
    render :action => :new
  end

end
