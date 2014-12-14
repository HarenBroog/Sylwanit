Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :posts
    resources :comments
  end

  resources :posts do
    resources :comments
  end

  resources :comments

  root to: 'home#index'
end
