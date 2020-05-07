Rails.application.routes.draw do
  resources :gossip do
    resources :new
  end
  resources :team, only: [:show, :index]
  resources :user
  resources :city, only: [:show]
  resources :session, only: [:new, :create, :destroy]
  get "/session/profile"

  get '/contact' => "team#contact"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
