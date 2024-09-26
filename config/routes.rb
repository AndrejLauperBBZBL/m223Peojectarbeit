Rails.application.routes.draw do
  get "pages/home"
  # Sessions routes for logging in and logging out
  get "login", to: "sessions#new", as: "login"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy", as: "logout"

  # User registration (sign-up)
  resources :users, only: [ :new, :create ]  # Automatically generates `new_user_path`
  resources :motorcycles, only: [ :index, :show ] # Motorcycle routes

  # Root path for your app
  root "motorcycles#index"
end
