Rails.application.routes.draw do
  get 'reservations/index'
  get 'reservations/create'
  devise_for :users
  root to: "pages#home"
  resources :boats do
    resources :reservations, only: :create
  end
  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :boats, only: %i[show destroy]
  resources :reservations
  # Defines the root path route ("/")
  # root "articles#index"
  # resources :boats
end
