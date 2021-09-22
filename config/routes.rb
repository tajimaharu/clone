Rails.application.routes.draw do
  root to: 'tops#index'
  get '/clones', to: 'clones#index'
  resources :clones do
    collection do
      post :confirm
    end
  end
end
