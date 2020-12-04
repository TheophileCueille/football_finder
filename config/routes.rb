Rails.application.routes.draw do
  root 'home#index'
  get '/secret', to: 'home#secret'
  devise_for :users

  #Aficher les teams, les matches, le standing
  get 'teams', to: "compets#teams"
  get 'match', to: "compets#match"
  get 'standing', to: "compets#standing"
  get '/team/:id', to: 'compets#show'
  get 'orders/new'
  get 'orders/create'
  resources :orders, only: [:new, :create]
end
