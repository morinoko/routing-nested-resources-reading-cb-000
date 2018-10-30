Rails.application.routes.draw do

  resources :authors, only: [:show]
  get 'authors/:id/posts'
  get 'authors/:id/posts/:post_id'

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'
end
