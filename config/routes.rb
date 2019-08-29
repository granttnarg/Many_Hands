Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get "/users", to: 'pages#users'
  get "/users/:id", to: 'pages#show', as: :user

  resources :events, only: [:new, :index, :create, :show, :edit, :update, :destroy] do
    resources :spots, only: [:new, :create, :edit, :update]
  end

  resources :spots, only: [:edit, :update, :destroy] do
    resources :invitations, only: [:new, :create]
    resources :requests, only: [:new, :create, :update]
    resources :creatives, only: [:show, :index, :edit, :update ]
  end


end
