Rails.application.routes.draw do
  # namespace :api do
    # namespace :v1 do
        resources :wish_lists
        resources :comments
        # resources :users
        resources :sites
        resources :countries
        resources :regions
        resources :categories
        # post '/login', to: 'auth#login'
        get '/users', to: 'users#index'
        post '/users', to: 'users#create'
        post '/login', to: 'users#login'
        get '/users/stay_logged_in', to: 'users#stay_logged_in'
        # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    # end
  # end
end
