Rails.application.routes.draw do
  
  get 'carts/index'
  resources :categories
  resources :products
  devise_for :users
  root to: 'pages#home'

  post 'products/:id/addCart/' => 'products#addCart', :as => 'addCart'
  resources :orders
  get 'about' => 'pages#about'
  get '/profile' => 'pages#profile'
  get '/admin' => 'pages#admin'
  get '/users' => 'pages#users'
end
