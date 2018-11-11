Rails.application.routes.draw do
  devise_for :users
  get 'places/index'
  get 'places/show'
  get 'places/new'
  root 'places#index'
  resources :places
  resources :comments
  match '/categories', to: 'places#categories', via: 'get'
  match '/newPlace', to: 'places#new_place', via: 'get'
  match '/listPlaces', to: 'places#list_places', via: 'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
