Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'teams', to: "compets#teams"
  get 'match', to: "compets#match"
  get 'standing', to: "compets#standing"

end
