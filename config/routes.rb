Rails.application.routes.draw do
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/expired', to: 'static_pages#expired'

  resources :shares, only: [:show, :new, :create], path: '', param: :uid
end
