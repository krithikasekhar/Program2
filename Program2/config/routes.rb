Rails.application.routes.draw do
  get 'sessions/new'

  #devise_for :users, :controllers => { registrations: 'registrations' }
  resources :applications
  resources :jobs
  resources :companies
  resources :users
  resources :welcome
  root'welcome#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users do
    resources :applications
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
