Rails.application.routes.draw do
  root 'employees#index'

  devise_for :users
  resources :employees
  get 'home/about'
  # Defines the root path route ("/")
end
