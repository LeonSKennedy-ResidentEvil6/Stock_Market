Rails.application.routes.draw do

  root to: 'sessions#welcome'

  resources :sectors
  resources :stocks
  resources :investors

  get 'signup', to: 'investors#new'
  # post 'signup', to: 'investor#create'
  get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/logout', to: 'sessions#destroy'
  

end
