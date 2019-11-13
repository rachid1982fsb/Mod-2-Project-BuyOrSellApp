Rails.application.routes.draw do
  root to: 'items#index'
	get '/login'     => 'sessions#new'
	post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'  
  
  post '/items/buy'   => 'items#buy_request'
  get '/items/buy', to: "items#buy"
  resources :items
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

