Rails.application.routes.draw do
  resources :invoices
  resources :plans
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post 'auths', to: 'auths#create'
end
