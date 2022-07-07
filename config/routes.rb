Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'products/index'
  devise_for :users
  root "home#index"
  get "/home", to:  "home#index"
  get "/profile", to:  "profile#index"
  get 'cart', to: "cart#show"

  resources :products
  resources :orders 
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end
end
