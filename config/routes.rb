Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  # get '/characters', to: 'characters#index'
  # get '/characters/new', to: 'characters#new'
  # get '/characters/:id', to: 'characters#show'
  # get '/characters/:id/edit', to: 'characters#edit'
  resources :characters
  get '/characters/:id/new', to: 'fighters#new'
  get '/characters/:id/:fighter_id', to: 'fighters#index'
  get '/characters/:id/:fighter_id/new', to: 'fighter_variants#new'
  get '/characters/:id/:fighter_id/edit', to: 'fighters#edit'


  post '/fighter_variants', to: 'fighter_variants#create'
  # post '/characters', to: 'characters#create'
  # patch '/characters/:id/edit', to: 'characters#update'
  patch '/characters/:id/:fighter_id', to: 'fighters#update'
  post '/fighters', to: 'fighters#create'
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'

end
