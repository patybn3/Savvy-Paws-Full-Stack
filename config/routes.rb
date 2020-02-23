# frozen_string_literal: true

Rails.application.routes.draw do
  resources :pets, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]
  # Pets
  post '/pets' => 'pets#create'
  get '/pets/:id' => 'pets#show'
  delete '/pets/:id' => 'pets#destroy'
  patch '/pets/:id' => 'pets#update'
  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
