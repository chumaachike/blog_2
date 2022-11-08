require 'rails_helper'
RSpec.describe 'Users', type: :request do
  describe 'GET /' do
    before(:each) do
      @lilly = User.create(name: 'Lilly', photo: 'https://c.tenor.com/YIeHLcvImMsAAAAM/meditation-dog.gif',
                           bio: 'Teacher from Poland')
      Post.create(author: @lilly, title: 'Hello', text: 'This is my first post')
      Post.create(author: @lilly, title: 'Hey', text: 'This is my second post')
      get '/'
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
    it 'render template users/index' do
      expect(response).to render_template('users/index')
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
    it 'render template users/index' do
      expect(response).to render_template('users/index')
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end
end
