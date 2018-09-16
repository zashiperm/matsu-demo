Rails.application.routes.draw do
  get 'suggetions/movie'
  get 'suggetions/estimate'
  resources :suggetions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
