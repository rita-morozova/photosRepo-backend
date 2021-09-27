Rails.application.routes.draw do
  resources :users, only: [:index, :create] 
  resources :photos, only: [:index, :create, :show, :destroy] 
  
  get '/profile', to: 'users#profile'
  post '/login', to: 'users#login' 
  post '/signup', to: 'users#create'
end
