Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'weather/index'

  # Defines the root path route ("/")
  root "weather#index"
end
