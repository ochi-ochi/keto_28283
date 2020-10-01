Rails.application.routes.draw do
  devise_for :users
  
  resources :articles do
    resources :users, only: :index
  end
  
  root to: "articles#index"
  
  resources :reactions, only: :create

end
