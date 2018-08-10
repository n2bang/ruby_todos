Rails.application.routes.draw do
  resources :projects_users
  resources :users
  resources :tasks
  resources :projects
  get 'home/index'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'home#login'
  post   '/login',   to: 'home#login'
  delete '/logout',  to: 'home#logout'
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end