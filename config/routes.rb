Rails.application.routes.draw do
  devise_for :users
  root to: "camps#index"
  resources :camps, only: [:index, :new, :create]
end