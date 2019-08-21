Rails.application.routes.draw do
  resources :games do
    resources :plays, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
