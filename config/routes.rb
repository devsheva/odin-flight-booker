Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :flights
  resources :bookings, only: [:new, :create, :show]
  root "flights#index"
end
