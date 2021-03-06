Rails.application.routes.draw do

  root to: 'application#home'

  resources :toppings
  resources :pizzas
  resources :users
  resources :pizza_toppings

  resources :login, only: [:new, :create]

  get "/login", to: 'login#new', as: "login"
  post "/login", to: 'login#create'
  delete "/logout", to: 'login#destroy'
end
