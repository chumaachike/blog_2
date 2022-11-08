module CommentsHelper
  private

  def post_params
    params.require(:user_post_comments).permit(:text)
  end
end
