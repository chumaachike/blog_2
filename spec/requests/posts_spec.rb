# require 'rails_helper'

# RSpec.describe 'Posts', type: :request do
#   before(:each) do
#     @lilly = User.create(name: 'Lilly', photo: 'https://c.tenor.com/YIeHLcvImMsAAAAM/meditation-dog.gif',
#       bio: 'Teacher from Poland')
# @tom = User.create(name: 'Tom', photo: 'https://c.tenor.com/uj4Cnt7RVE0AAAAM/fatdog-dog.gif',
#     bio: 'Teacher from Mexico.')
# @jim = User.create(name: 'Jim', photo: 'https://c.tenor.com/lFZ9_tWmmEAAAAAM/please-doggy.gif',
#     bio: 'Teacher from Japan.')
# @bill = User.create(name: 'Bill', photo: 'https://c.tenor.com/x0eeZxeU56AAAAAM/puppy-cute.gif',
#      bio: 'Teacher from Uganda.')
# @hello = Post.create(author: @lilly, title: 'Hello', text: 'This is my first post')
# Post.create(author: @lilly, title: 'Hey', text: 'This is my second post')
# Comment.create(post: @hello, author: @tom, text: 'First comment')
# Comment.create(post: @hello, author: @lilly, text: 'Second comment')
# Comment.create(post: @hello, author: @jim, text: 'Third comment')
# Comment.create(post: @hello, author: @bill, text: 'Fourth comment')
# Comment.create(post: @hello, author: @tom, text: 'Fifth comment')
# Like.create(post: @hello, author: @bill)
# Like.create(post: @hello, author: @jim)
# Like.create(post: @hello, author: @tom)
#     get '/posts/index'
#   end
#   describe 'GET /posts/index' do
#     it 'returns http success' do
#       expect(response).to have_http_status(:success)
#     end
#     it 'render template posts/index' do
#       expect(response).to render_template('posts/index')
#     end
#     it 'body include the placeholder "Here is a list of posts for a given user"' do
#       expect(response.body).to include('Here is a list of posts for a given user')
#     end
#     it 'body include the path app/views/posts/index.html.erb' do
#       expect(response.body).to include('app/views/posts/index.html.erb')
#     end
#   end
# end
