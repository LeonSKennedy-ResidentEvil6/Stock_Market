Rails.application.routes.draw do

  root 'sessions#welcome'

  get 'signup', to: 'investor#new'
  post 'signup', to: 'investor#create'
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  post '/signout', to: 'sessions#destroy'
  

  resources :sectors
  resources :stocks
  resources :investors

end
