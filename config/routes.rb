Rails.application.routes.draw do
  root to:  'lists#index'
  get '/show_profile', to: 'lists#show_profile'
  resources :lists
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  namespace :admin do
    resources :users
  end
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
