Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [:new, :create, :show, :edit, :update] do
    resources :spots, only: [:new, :create]
  end

  resources :spots, only: [:new, :create] do
    resources :requests, only: [:new, :create]
  end
end
