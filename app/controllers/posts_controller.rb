class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts_per_page = 2
    @user = User.find(params[:user_id])
    @page = params.fetch(:page, 1)
    @posts = @user.posts[2 * (@page.to_i - 1), @posts_per_page]
  end

  def show
    @posts_per_page = 2
    @user = User.find(params[:user_id])
    @page = params.fetch(:page, 1)
    @posts = @user.posts[2 * (@page.to_i - 1), @posts_per_page]
    @post = Post.find(params[:id])
    @comms = @post.comments.includes(:author)
  end

  def new
    @posts_per_page = 2
    @user = User.find(params[:user_id])
    @page = params.fetch(:page, 1)
    @posts = @user.posts[2 * (@page.to_i - 1), @posts_per_page]
    @post = Post.new
    respond_to do |format|
      format.html { render :new, locals: { post: @post } }
    end
  end

  def destroy
    puts params[:id]
    post = Post.find(params[:id])
    post.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Post was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  def create
    @posts_per_page = 2
    @user = User.find(params[:user_id])
    @page = params.fetch(:page, 1)
    @posts = @user.posts[2 * (@page.to_i - 1), @posts_per_page]
    post = Post.new
    post.title = params[:user_posts][:title]
    post.text = params[:user_posts][:text]
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
