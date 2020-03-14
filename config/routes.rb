Rails.application.routes.draw do
  #ルート設定
  root "homes#index"
  #about ページ
  get "homes/about"
  #国選択 ページ
  get "homes/country"
  #devise
  devise_for :users, :controllers => {
                       :registrations => "users/registrations",
                     }
  #users routing
  resources :users, only: [:edit, :update, :destroy]
  #国/都市/地域 routing
  resources :countries, only: [:show]
  resources :regions, only: [:show]
  resources :areas, only: [:show]
  # question routing (nested to user/show)
  resources :users, only: [:show] do
    resources :questions, only: [:new, :show, :create, :edit, :update, :destroy]
    member do
      get :no_answer
    end
  end
  #いいね機能
  resources :questions, only: [:show] do
    resource :favorites, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
