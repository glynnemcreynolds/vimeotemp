Rails.application.routes.draw do
  root 'static_pages#about'
  get '/about', to: 'static_pages#about'
  get '/expired', to: 'static_pages#expired'

  resources :shares, only: [:show, :new, :create], path: '', param: :uid
end
