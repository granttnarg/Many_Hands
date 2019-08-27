Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [:new, :index, :create, :show, :edit, :update, :destroy] do
    resources :spots, only: [:new, :create]
  end

  resources :spots, only: [:edit, :update, :destroy] do
    resources :requests, only: [:new, :create]
  end
end
