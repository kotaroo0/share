Rails.application.routes.draw do
  root 'user_items#index'
  resources :users, only: %i[show edit update destroy]
  resources :items
  resources :user_items, only: %i[index create]

  get '/search', to: 'items#search'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get   '/login',   to: 'sessions#new'
  post  '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
end
