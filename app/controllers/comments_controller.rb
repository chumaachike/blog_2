require_relative '../helpers/comments_helper'
class CommentsController < ApplicationController
  include CommentsHelper
  def new
    @comment = Comment.new
  end

  def create
    post = Post.find(params[:post_id])
    user = User.find(params[:user_id])
    comment = Comment.new(post_params)
    comment.post = post
    comment.author = current_user
    respond_to do |format|
      format.html do
        if comment.save
          flash[:success] = 'Comment was successfully created'
        else
          flash.now[:error] = 'Error: Comment could not be saved'
        end
        redirect_to user_post_path(user, post)
      end
    end
  end
end
