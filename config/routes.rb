Rails.application.routes.draw do
  get 'hangouts/index'
  devise_for :users

  # get 'users/sign_out', to: 'root'

  root 'hangouts#index'

  resources :messages, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
