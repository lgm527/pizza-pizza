Rails.application.routes.draw do
  resources :toppings
  resources :pizzas
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
