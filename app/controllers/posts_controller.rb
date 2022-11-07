require_relative '../helpers/posts_helper'
class PostsController < ApplicationController
  include PostsHelper
  def index
    @current_user = current_user
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @current_user = current_user
    @post = Post.find(params[:id])
    @comments = @post.comments.includes(:author)
  end

  def new
    @current_user = current_user
    @post = Post.new
  end

  def create
    @current_user = current_user
    post = Post.new(post_params)
    post.author = current_user
    respond_to do |format|
      format.html do
        if post.save
          flash[:success] = 'Post was successfully created'
          redirect_to user_path(current_user)
        else
          flash.now[:error] = 'Error: Post could not be saved'
          render :new, new_user_post_path(current_user)
        end
      end
    end
  end
end
