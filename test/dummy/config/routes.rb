Rails.application.routes.draw do
  resources :accounts
  resources :sub_groups
  resources :groups
  resources :basic_groups
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
