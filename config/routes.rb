Rails.application.routes.draw do
  resources :categories

  devise_for :users

  resources :users do
    resources :posts
    resources :comments
  end

  resources :categories do
    resources :posts
  end

  resources :posts do
    resources :comments
  end

  resources :comments

  root to: 'home#index'
end
