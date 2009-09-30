class QuipsController < ApplicationController
  def index
    @quips = Quip.find(:all)
  end

  def new
    @quip = Quip.new
  end

  def create
    @quip = Quip.new(params[:quip])
    @quip.save!
    redirect_to posts_path
  rescue ActiveRecord::RecordInvalid
    render :action => :new
  end

  def edit
    @quip = Quip.find(params[:id])
  end

  def update
    @quip = Quip.find(params[:id])
    @quip.update_attributes!(params[:quip])
    redirect_to posts_path
  rescue ActiveRecord::RecordInvalid
    render :action => :edit
  end
end
