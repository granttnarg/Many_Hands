Rails.application.routes.draw do
  get 'spots/new'
  get 'spots/create'
  devise_for :users
  root to: 'pages#home'
  resources :events, only: [:new, :create]
end
