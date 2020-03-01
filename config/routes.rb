Rails.application.routes.draw do
  #ルート設定
  root "homes#index"

  #devise
  devise_for :users

  #国/都市/地域 routing
  resources :countries, only: [:show]
  resources :regions, only: [:show]
  resources :areas, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
