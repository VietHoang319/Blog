Rails.application.routes.draw do
  get "login" => 'session#new'
  post "login" => 'session#create'
  delete "logout" => 'session#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Mapping url with action of controller
  root "articles#index"
  
  resources :articles do
    resources :comments
  end

  resources :users
  # Defines the root path route ("/")
  # root "articles#index"
end
