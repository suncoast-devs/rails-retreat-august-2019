Rails.application.routes.draw do
  get "sessions/new"
  resources :games do
    resources :plays, only: [:create, :destroy]
  end

  resources :designers
  resources :users

  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  delete "/logout", to: "sessions#destroy"

  get "/", to: redirect("/games")
end
