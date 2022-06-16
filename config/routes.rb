Rails.application.routes.draw do
  devise_for :users
  root to: "camps#index"
  resources :camps
  resources :users, only: :show
end