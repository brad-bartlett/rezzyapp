Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :restaurants
resources :reviews
resources :users
resources :foodtypes
resources :reservations

end
