Rails.application.routes.draw do
  root to: 'items#index'
	get '/login'     => 'sessions#new'
	post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'  
  
  post '/boughts/bought'   => 'boughts#bought_request'
  get '/boughts/bought', to: "boughts#bought"
  resources :items
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

