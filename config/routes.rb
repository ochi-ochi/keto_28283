Rails.application.routes.draw do
  devise_for :users
  resources :articles
  root to: "articles#index"
  resources :users, only: :index
  resources :reaction, only: :create
end
