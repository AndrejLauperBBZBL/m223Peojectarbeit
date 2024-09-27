Rails.application.routes.draw do
  get "pages/home"
  # Sessions routes for logging in and logging out
  get "login", to: "sessions#new", as: "login"
  post "login", to: "sessions#create"
  delete 'logout', to: 'sessions#destroy', as: 'logout'


  # User registration (sign-up)
  resources :users, only: [ :new, :create ]
  resources :motorcycles, only: [:index, :show] do
    resources :bookings, only: [:create, :new, :update]
  end

  # Root path for your app
  root "motorcycles#index"

  namespace :admin do
    get '/', to: 'admin#index', as: 'admin'
    patch '/confirm_user/:id', to: 'admin#confirm_user', as: 'confirm_user'
  end
end
