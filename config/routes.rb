Rails.application.routes.draw do
  
  resources :widgets
  resources :users, only: [:index, :show, :create]
  resources :features
  resources :assignments, only: [:index, :create, :destroy]

  post '/login', to: 'auth#create'
  get '/logged_in', to: 'application#logged_in?'
  get '/features', to: 'features#index'
  get '/profile', to: 'users#profile'
  get '/profilefeatures', to: 'users#profilefeatures'
    
end
