Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end
  root to: 'posts#index'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
