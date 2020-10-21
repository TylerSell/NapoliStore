Rails.application.routes.draw do
  resources :transaction_items
  resources :transactions
  resources :cart_items
  resources :carts
  resources :products
  resources :categories
  resources :collections
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
