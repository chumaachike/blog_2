module PostsHelper
  private

  def post_params
    params.require(:user_posts).permit(:title, :text)
  end
end
