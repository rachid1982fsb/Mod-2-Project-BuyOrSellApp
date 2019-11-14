Rails.application.routes.draw do
  root to: 'items#index'
	get '/login', to:'sessions#new'
	post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'  
  
  post '/boughts/bought', to:'boughts#bought_request'
  get '/boughts/bought', to: "boughts#bought"

  post '/items', to:'items#by_location' 
  resources :items
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

