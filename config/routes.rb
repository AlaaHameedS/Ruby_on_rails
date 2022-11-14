Rails.application.routes.draw do
  
 
  devise_for :users
  resources :works
  resources :users
  root to: "users#index"

  resources :authors , only: [:index]
  resources :books , only: [:index]


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
