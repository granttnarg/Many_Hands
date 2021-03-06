Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  devise_for :users

  root to: 'pages#home'
  get "/users", to: 'pages#users'
  get "/users/:id", to: 'pages#show', as: :user
  get "/dashboard", to: 'pages#dashboard', as: :dashboard

  resources :events, only: [:new, :index, :create, :show, :edit, :update, :destroy] do
    resources :spots, only: [:new, :create, :edit, :update]
  end

  resources :spots, only: [:edit, :update, :destroy] do
    resources :invitations, only: [:new, :create]
    resources :creatives, only: [:show, :index ]
    resources :requests, only: [:new, :create, :update]
  end


  resources :profiles, only: [:edit, :update]

  resources :requests, only: [] do
    resources :reviews, only: [:new, :create]

  end



end
