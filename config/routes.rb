Rails.application.routes.draw do

	root 'pages#home'
  
  	get '/home', to: 'pages#home'

  devise_for :users
  resources :locations do
  	member do
  		post 'like'
  	end
  end
  
end
