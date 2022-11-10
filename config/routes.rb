Rails.application.routes.draw do
  devise_for :users
  get 'likes/create'
  get 'comments/create'
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show new create delete] do
      resources :comments, only: %i[create]
      resources :likes, only: %i[create]
    end
  end
  get 'users/index'
  get 'users/show'
  get 'posts/index'
  get 'posts/show'
  root 'users#index'
  delete '/users/:user_id/posts/:id', to: 'posts#destroy'
  get '/users/:user_id/posts/:post_id/comments/:id', to: 'comments#show', as: 'user_post_comment'
  delete '/users/:user_id/posts/:post_id/comments/:id', to: 'comments#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
