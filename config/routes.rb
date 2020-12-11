Rails.application.routes.draw do

  resources :sectors
  resources :stocks
  resources :investors

  root 'sessions#welcome'

  get 'signup', to: 'investor#new'
  # post 'signup', to: 'investor#create'
  get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  post '/sessions', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  

end
