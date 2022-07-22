Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get '/characters', to: 'characters#index'
  get '/characters/:id', to: 'characters#show'
  get '/characters/:id/:fighter_id', to: 'fighters#index'
  get '/characters/:id/:fighter_id/new', to: 'fighter_variants#new'

end
