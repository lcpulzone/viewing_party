Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/register', to: 'users#new'
  post '/register', to: 'users#create'

  resources 'dashboard'

  get '/discover', to: 'discover#index'
end
