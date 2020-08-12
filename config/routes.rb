Rails.application.routes.draw do
  resources :wish_lists
  resources :comments
  resources :users
  resources :sites
  resources :countries
  resources :regions
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
