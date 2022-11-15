Rails.application.routes.draw do
  
  resources :authors , only: [:index] do
    resources :books , only: [:index]
  end
 
  devise_for :users
  resources :works
  resources :users
  root to: "users#index"



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
