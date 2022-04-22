Rails.application.routes.draw do
  # devise_for :users
  # devise_scope :users do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root 'users#index'
  resources :users, only: [:index]
  resources :catagories, only: [:index]
  resources :transactions, only: [:index]
  resources :splash, only: [:index] # splash screen
end
