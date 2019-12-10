# frozen_string_literal: true

Rails.application.routes.draw do
  get '/sessions/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy', as: :destroy_session

  get 'signup' => 'users#new', :as => 'signup'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles do
    get '/comments/new' => 'comments#new'
    get '/comments/:id' => 'comments#show', as: :comment
    post '/comments' => 'comments#create'
  end
  root 'home#show'
  resources :contacts
end
