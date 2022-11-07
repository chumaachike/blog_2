Rails.application.routes.draw do
  get 'likes/create'
  get 'comments/create'
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show new create] do
      resources :comments, only: %i[new create]
      resources :likes, only: %i[create]
    end
  end
  get 'users/index'
  get 'users/show'
  get 'posts/index'
  get 'posts/show'
  root 'users#index'

  get '/users/:user_id/posts/:post_id/comments/:id', to: 'comments#show', as: 'user_post_comment'
end
