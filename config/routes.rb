Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'

  resources :prototypes do
    resources :comments
  end

  resources :prototypes
  resources :users 
  resources :comment
end