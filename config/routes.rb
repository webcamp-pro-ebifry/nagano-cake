Rails.application.routes.draw do
  devise_for :client_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'

  resources :users


	get	'/client_users/' =>'client_users#show'
	get	'/client_users/edit'=> 'client_users#edit'
	get '/client_users/confirmation' => 'client_users#confirmation'



	get '/products/' => 'client_user/products#index'
	get '/products/:id' => 'client_user/products#show'

	get '/admin/products/:id/edit' =>'admin/products#edit'
	patch	'/adminproducts/:id/update' =>'admin/products#update'
	get	'/admin/products/new' => 'admin/products#new'
	post	'/admin/products/:id/create' =>	'admin/products#create'
	get	'/admin/products/ '	=> 'admin/products#index'




end
