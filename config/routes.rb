Rails.application.routes.draw do
  
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/logged_in', to: 'application#logged_in?'
  get '/features', to: 'features#index'
  get '/profile', to: 'users#profile'
    
end
