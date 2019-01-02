Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users, only: [:index, :new, :show, :create, :edit, :update]
  resources :events, only: [:index, :new, :show, :create]
  resources :interests, only: [:index, :show]
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  get "/signup", to: "users#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
