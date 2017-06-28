Rails.application.routes.draw do

	root 'pages#home'
  
  	get '/home', to: 'pages#home'

  	resources :cuisines, only: [:new, :create, :show]
  	resources :categories, only: [:new, :create, :show]

  devise_for :users
  resources :locations do
  	member do
  		post 'like'
  	end
  end
  
end
