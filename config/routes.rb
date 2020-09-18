Rails.application.routes.draw do
  root 'static_pages#about'
  get '/about', to: 'static_pages#about'

  resources :shares, only: [:show, :new, :create], path: '', param: :uid
end
