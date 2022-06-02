Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :boats do
    resources :reservations, only: [:create, :new]
  end
  # delete '/boats/:id', to: 'boats#destroy', as: 'boat_delete'
  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :boats, only: %i[show destroy]
  resources :reservations
  # Defines the root path route ("/")
  # root "articles#index"
  # resources :boats
end
