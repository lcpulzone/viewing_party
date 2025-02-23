Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/register', to: 'users#new'
  post '/users', to: 'users#create'

  get '/dashboard', to: 'dashboard#index', as: 'dashboard_index'
  # post '/dashboard', to: 'dashboard#show'

  post '/friendships', to: 'friendships#create'

  get '/discovermovies', to: 'movies#index'
  get '/top40movies', to: 'movies#show'
  get '/moviedetails', to: 'movies#details'

  get '/search', to: 'movies#search'
  post '/search', to: 'movies#search'

  get 'new_viewing_party', to: 'parties#new'
  post 'new_viewing_party', to: 'parties#create'
end
