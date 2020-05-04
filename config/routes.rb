Rails.application.routes.draw do
  root 'gossip#index'
  post '/' => "gossip#create"
  get 'gossip/:id' => 'gossip#show'
 
  get '/team' => "team#equipe"
  get '/contact' => "team#contact"

  get "welcome/:first_name" => "gossip#landing"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
