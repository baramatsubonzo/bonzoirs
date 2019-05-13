Rails.application.routes.draw do
  resources :members

  get '/members/home', to:'members#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
