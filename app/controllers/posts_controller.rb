class PostsController < ApplicationController
  def index
    @posts = Post.find(:all)
  end

  def new
    if params[:type]
      @post = params[:type].camelize.constantize.new
    else
      render :action => 'new_index'
    end
  end

  def create
    @post = params[:type].camelize.constantize.new(params[:post])
    @post.save!
    redirect_to posts_path
  rescue ActiveRecord::RecordInvalid
    render :action => :new
  end

end
