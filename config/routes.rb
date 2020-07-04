Rails.application.routes.draw do
  namespace :admin do
    get 'homes/top'
  end
  devise_for :client_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'admin/homes/top' => 'admin/homes#top'
  get 'homes/top' => 'homes#top'

  resources :products
  resources :genres
  resources :shipping_adress
  resources :cart_items
  resources :orders
  resources :order_details
  resource :users






end
