Rails.application.routes.draw do
  root 'home#index'
  get '/secret', to: 'home#secret'
  devise_for :users
end
