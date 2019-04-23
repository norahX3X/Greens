Rails.application.routes.draw do
  get 'carts/index'
  resources :categories
  resources :products
  devise_for :users
  root to: 'pages#home'

  post 'products/addCart'

  resources :orders
  # post '/add_to_cart/:product_id' => 'carts#add_to_cart', :as => 'add_to_cart'
  # post 'addCart' => 'product#addCart'

  # get '/addCart', to: 'ProductsController#addCart', as: 'addCart'

#   root 'orders#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'about' => 'pages#about'
  get '/profile' => 'pages#profile'
  get '/admin' => 'pages#admin'
end
