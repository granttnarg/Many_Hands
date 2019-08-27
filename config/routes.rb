Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :events, only: [:new, :create, :show] do
    resources :spots, only: [:new, :create]
  end
end
