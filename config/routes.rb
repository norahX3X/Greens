Rails.application.routes.draw do
  resources :categories
  resources :products
  devise_for :users
  root to: 'pages#home'

  resources :orders
#   root 'orders#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
