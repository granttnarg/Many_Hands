Rails.application.routes.draw do
  get 'spots/new'
  get 'spots/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
