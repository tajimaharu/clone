Rails.application.routes.draw do
  root to: 'tops#index'
  get '/clones', to: 'clones#index'
  resources :clones
end
