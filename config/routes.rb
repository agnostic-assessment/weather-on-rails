Rails.application.routes.draw do
  # get 'weather/index'
  # get 'address/index'
  root "weather#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end