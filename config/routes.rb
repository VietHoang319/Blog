Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Mapping url with action of controller
  root "articles#index"
  
  resources :articles do
    resources :comments
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
