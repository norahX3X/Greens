Rails.application.routes.draw do
  
  get 'shipping_infos/index'
  get 'shipping_infos/new'
  get 'shipping_infos/edit'
  get 'shipping_infos/delete'
  get 'carts/index'
  resources :categories
  resources :products
  resources :shipping_infos
  devise_for :users
  root to: 'pages#home'

  post 'products/:id/addCart/' => 'products#addCart', :as => 'addCart'
  resources :orders
  get 'about' => 'pages#about'
  get '/profile' => 'pages#profile'
  get '/admin' => 'pages#admin'
  get '/users' => 'pages#users'
end
