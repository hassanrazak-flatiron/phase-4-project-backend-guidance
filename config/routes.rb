Rails.application.routes.draw do
  resources :paths
  resources :careers, except: [:update,:destroy,:create]
  resources :users, only: [:create, :index]
  
  resources :sessions, only: [:create, :destroy]

  # create a user
  post '/signup', to: 'users#create'
  
  # a user who is already in the database wants to logon to the website. 
  post '/login', to: 'sessions#create'

  # retrive user data after authorization and authentication
  get '/me', to: 'users#show'
  
  # a user wants to logout of a session. 
  delete '/logout', to: 'sessions#destroy'
 

end
