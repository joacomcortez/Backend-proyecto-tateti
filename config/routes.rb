Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :user
  get '/login', to: 'user#login'
  resources :board
  post '/play', to: 'board#move'

end
