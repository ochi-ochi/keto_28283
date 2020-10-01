Rails.application.routes.draw do
  devise_for :users
  
  resources :articles do
    resources :reactions, only: :create
  end
  
  root to: "articles#index"
  
  
  resources :users, only: :index
end
