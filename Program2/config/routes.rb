Rails.application.routes.draw do
  devise_for :users
  resources :applications
  resources :jobs
  resources :companies
  resources :users
  root'users#index'
  resources :users do
    resources :applications
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
