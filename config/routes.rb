Rails.application.routes.draw do
  resources :cart_items
  resources :items
  resources :carts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/login', to: 'users#login'
  
end

# get '/players/search/:name', to: 'players#search'
