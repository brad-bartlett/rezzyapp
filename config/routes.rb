Rails.application.routes.draw do
  get 'grayscale/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'welcome#home'
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
resources :restaurants
resources :menu_items, only: [:index, :show]
resources :reservations
resources :users, except: [:index]
resources :friendships



end
