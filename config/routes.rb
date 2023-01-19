Rails.application.routes.draw do
  resources :gadgets
  devise_for :users, controllers: {
  registrations: 'registrations'

  }

  root 'gadgets#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
