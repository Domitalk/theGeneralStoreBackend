Rails.application.routes.draw do
  resources :cart_items
  resources :items
  resources :carts
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/login', to: 'users#login'
  # get '/users/:id', to 'users#show'

  namespace :api do
    namespace :v1 do

      # get '/users/:id', to: 'users#show'
      post '/auth', to: 'auth#create'
      post '/users', to: 'users#create'
    end
  end
end

# get '/players/search/:name', to: 'players#search'
