Rails.application.routes.draw do
  namespace :accounts do
    resources :account_masters
    resources :sub_groups
    resources :groups
    resources :basic_groups
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
