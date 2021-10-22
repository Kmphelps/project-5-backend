Rails.application.routes.draw do
  
  resources :widgets
  resources :users, only: [:show, :create]
  resources :features, only: [:index, :show, :create, :destroy]
  resources :assignments, only: [:index, :create, :destroy]

  post '/login', to: 'auth#create'
  get '/logged_in', to: 'application#logged_in?'
  get '/features', to: 'features#index'
  get '/profile', to: 'users#profile'
    
end
