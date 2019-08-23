Rails.application.routes.draw do
  resources :games do
    resources :plays, only: [:create, :destroy]
  end

  resources :designers
  resources :users

  get "/signup", to: "users#new"

  get "/", to: redirect("/games")
end
